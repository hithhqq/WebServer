#include "CountDownLatch.h"

CountDownLatch::CountDownLatch(int count)
    : count_(count){}

void CountDownLatch::wait()
{
    std::unique_lock<std::mutex> lock(mutex_);
    condition_.wait(lock, [this]{ return count_ == 0; });
}

void CountDownLatch::countDown()
{
    std::lock_guard<std::mutex> lock(mutex_);
    --count_;
    if (count_ == 0)
    {
        condition_.notify_all();
    }
}