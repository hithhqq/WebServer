#pragma once

#include <sys/epoll.h>
#include <vector>
#include <memory>
#include "Channel.h"
#include "HttpData.h"
#include "Timer.h"
#include "../base/noncopyable.h"

class Epoll : noncopyable
{
public:
    using ChannelPtr = std::shared_ptr<Channel> ;
    Epoll();
    ~Epoll();
    void epoll_add(ChannelPtr request, int timeout);
    void epoll_mod(ChannelPtr request, int timeout);
    void epoll_del(ChannelPtr request);
    std::vector<std::shared_ptr<Channel>> poll();
    std::vector<std::shared_ptr<Channel>> getEventsRequest(int events_num);
    void add_timer(std::shared_ptr<Channel> request_data, int timeout);
    int getepollFd() { return epollFd_; }
    void handleExpired();
private:
    static const int MAXFDS = 100000;
    int epollFd_;
    std::vector<epoll_event> events_;
    std::shared_ptr<Channel> fd2chan_[MAXFDS];
    std::shared_ptr<HttpData> fd2http_[MAXFDS];
    TimerManager timerManager_;
};