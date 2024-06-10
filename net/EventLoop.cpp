#include "EventLoop.h"
#include <iostream>
#include <poll.h>
#include <sys/eventfd.h>
__thread EventLoop* t_loopInThisThread = 0;

int createEventfd()
{
    int evfd = eventfd(0, EFD_NONBLOCK | EFD_CLOEXEC);
    if (evfd < 0)
    {
        LOG << "Failed in eventfd";
        abort();
    }
    return evfd;
}
EventLoop::EventLoop()
    : looping_(false),
      poller_(new Epoll()),
      wakeupFd_(createEventfd()),
      quit_(false),
      eventHandling_(false), 
      callicallingPendingFunctors_(false),
      threadId_(CurrentThread::tid()),
      mutex_(),
      wakeupChannel_(new Channel(this, wakeupFd_))
{
    if (t_loopInThisThread)
    { 
        LOG << "EventLoop created";
    }
    else
    {
        t_loopInThisThread = this;
    }
    wakeupChannel_->setEvents(EPOLLIN | EPOLLET);
    wakeupChannel_->setReadHandler(std::bind(&EventLoop::handleRead, this));
    wakeupChannel_->setConnHandler(std::bind(&EventLoop::handleConn, this));
    poller_->epoll_add(wakeupChannel_, 0);
}
EventLoop::~EventLoop()
{
    assert(!looping_);
    close(wakeupFd_);
    t_loopInThisThread = NULL;
}

void EventLoop::loop()
{
    assert(!looping_);
    assertInLoopThread();
    looping_ = true;
    quit_ = false;
    std::vector<ChannelPtr> ret;
    while(!quit_)
    {
        ret.clear();
        ret = poller_->poll();
        eventHandling_ = true;
        for (auto &it : ret)
        {
            it->handleEvents();
        }
        eventHandling_ = false;
        doPendingFunctors();
        poller_->handleExpired();
    }
    looping_ = false;
}

void EventLoop::quit()
{
   quit_ = true;
   if (!isInLoopThread())
   {
        wakeup();
   }
}

void EventLoop::runInLoop(Functor &&cb)
{
    if(isInLoopThread())
    {
        cb();
    }
    else
    {
        queueInLoop(std::move(cb));
    }
}

void EventLoop::queueInLoop(Functor &&cb)
{
    {
        std::lock_guard<std::mutex> lock(mutex_);
        pendingFunctors_.emplace_back(std::move(cb));
    }
    if(!isInLoopThread() || callicallingPendingFunctors_)
    {
        wakeup();
    }
}

void EventLoop::wakeup()
{
    uint64_t one = 1;
    ssize_t n = writen(wakeupFd_, (char*)(&one), sizeof one);
    if (n != sizeof one)
    {
        LOG << "EventLoop::wakeup() writes " << n << " bytes instead of 8";
    }
}

void EventLoop::handleRead()
{
    uint64_t one = 1;
    ssize_t n = readn(wakeupFd_, &one, sizeof one);
    if (n != sizeof one) {
        LOG << "EventLoop::handleRead() reads " << n << " bytes instead of 8";
    }
    // pwakeupChannel_->setEvents(EPOLLIN | EPOLLET | EPOLLONESHOT);
    wakeupChannel_->setEvents(EPOLLIN | EPOLLET);
}

void EventLoop::doPendingFunctors()
{
    std::vector<Functor> functors;
    callicallingPendingFunctors_ = true;

    {
        std::lock_guard<std::mutex>lock(mutex_);
        functors.swap(pendingFunctors_);
    }

    for (auto &x : functors)
    {
        x();
    }
    callicallingPendingFunctors_ = false;
}

void EventLoop::handleConn()
{
    updatePoller(wakeupChannel_, 0);
}
