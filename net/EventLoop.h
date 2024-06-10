#pragma once
#include "../base/noncopyable.h"
#include <assert.h>
#include "../base/CurrentThread.h"
#include "../base/Thread.h"
#include "../base/Logging.h"
#include "Util.h"
#include "Epoll.h"
#include "Channel.h"

class EventLoop : noncopyable
{
public:
    using Functor = std::function<void()>;
    EventLoop();
    ~EventLoop();
    void loop();
    void quit();
    void runInLoop(Functor&& cb);
    void queueInLoop(Functor&& cb);
    void assertInLoopThread() { assert(isInLoopThread()); }
    bool isInLoopThread() const { return threadId_ == CurrentThread::tid(); }
    void shutdown(std::unique_ptr<Channel> channel) { shutdownWR(channel->getFd()); }
    void removeFromPoller(std::shared_ptr<Channel> channel)
    {
        poller_->epoll_del(channel);
    }
    void updatePoller(std::shared_ptr<Channel> channel, int timeout = 0)
    {
        poller_->epoll_mod(channel, timeout);
    }
    void addToPoller(std::shared_ptr<Channel> channel, int timeout = 0)
    {
        poller_->epoll_add(channel, timeout);
    }

private:
    bool looping_;
    std::shared_ptr<Epoll> poller_;
    int wakeupFd_;
    bool quit_;
    bool eventHandling_;
    std::mutex mutex_;
    std::vector<Functor> pendingFunctors_;
    bool callicallingPendingFunctors_;
    const pid_t threadId_;
    std::shared_ptr<Channel> wakeupChannel_;

    void wakeup();
    void handleRead();
    void doPendingFunctors();
    void handleConn();
};