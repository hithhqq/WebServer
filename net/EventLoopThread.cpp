#include "EventLoopThread.h"
#include "../base/Logging.h"
#include <assert.h>
EventLoopThread::EventLoopThread()
    : loop_(nullptr),
      exiting_(false),
      mutex_(),
      thread_(std::bind(&EventLoopThread::threadFunc, this), "EventLoopThread") {}

EventLoopThread::~EventLoopThread()
{
    exiting_ = true;
    if (loop_ != NULL)
    {
        loop_->quit();
        thread_.join();
    }
}

EventLoop *EventLoopThread::startLoop()
{
    assert(!thread_.started());
    thread_.start();

    {
        std::unique_lock<std::mutex> lock(mutex_);
        cond_.wait(lock, [this]{return loop_ != nullptr; });
    }
    assert(loop_ != nullptr);
    return loop_;
}

void EventLoopThread::threadFunc()
{
    EventLoop loop;

    {
        std::lock_guard<std::mutex>lock(mutex_);
        loop_ = &loop;
        cond_.notify_one();
    }
    loop.loop();
    LOG << "loop.loop()";
    loop_ = NULL;
}
