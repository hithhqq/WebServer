#pragma once
#include "../base/noncopyable.h"
#include "../base/Thread.h"
#include "EventLoop.h"
#include <mutex>

class EventLoopThread : noncopyable 
{
public:
    EventLoopThread();
    ~EventLoopThread();
    EventLoop* startLoop();
private:
    void threadFunc();
    EventLoop* loop_;
    bool exiting_;
    Thread thread_;
    std::mutex mutex_;
    std::condition_variable cond_;
};