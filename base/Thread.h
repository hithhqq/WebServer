#pragma once
#include <pthread.h>
#include <sys/syscall.h>
#include <unistd.h>
#include <functional>
#include <memory>
#include <string.h>
#include "CountDownLatch.h"
#include "noncopyable.h"
class Thread : noncopyable
{
public:
    using ThreadFunc = std::function<void()>;
    explicit Thread(const ThreadFunc&, const std::string& name = std::string());
    ~Thread();
    void start();
    int join();
    bool started() const { return started_; }
    pid_t tid() const { return tid_; }
    const std::string& name() const { return name_; }
private:
    void setDefaultName();
    bool started_;
    bool joined_;
    pid_t tid_;
    std::string name_;
    pthread_t pthreadId_;
    ThreadFunc func_;
    CountDownLatch latch_;
};