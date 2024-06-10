#include "Thread.h"
#include "CurrentThread.h"
#include <assert.h>
#include <sys/prctl.h>

namespace CurrentThread {
    __thread int t_cachedTid = 0;
    __thread char t_tidString[32];
    __thread int t_tidStringLength = 6; 
    __thread const char* t_threadName = "default";
}

struct ThreadData {
    using ThreadFunc = Thread::ThreadFunc;
    ThreadFunc func_;
    std::string name_;
    pid_t *tid_;
    CountDownLatch *latch_;

    ThreadData(const ThreadFunc& func, const std::string& name, pid_t* tid, CountDownLatch *latch)
        : func_(func), name_(name), tid_(tid), latch_(latch) {}
    void runInthread() 
    {
        *tid_ = CurrentThread::tid();
        tid_ = NULL;
        latch_->countDown();
        latch_ = NULL;
        CurrentThread::t_threadName = name_.empty() ? "Thread" : name_.c_str(); // 如果当前线程没有设置名字，就用默认的，否则用设置的
        prctl(PR_SET_NAME, CurrentThread::t_threadName); // 设置当前线程的名称

        func_();
        CurrentThread::t_threadName = "finished";
    }   
};

pid_t gettid() { return static_cast<pid_t>(::syscall(SYS_gettid)); }

void CurrentThread::cacheTid(){
    if (t_cachedTid == 0)
    {
        t_cachedTid = gettid();
        t_tidStringLength = snprintf(t_tidString, sizeof t_tidString, "%5d", t_cachedTid);
    }
}

Thread::Thread(const ThreadFunc &func, const std::string &name)
    : started_(false),
      joined_(false),
      pthreadId_(0),
      tid_(0),
      func_(func),
      name_(name),
      latch_(1) {
    setDefaultName();
}

void *startThread(void *obj)
{
    ThreadData* data = static_cast<ThreadData *>(obj);
    data->runInthread();
    delete data;
    return NULL;
}
Thread::~Thread()
{
    if (started_ && !joined_)
    {
        pthread_detach(pthreadId_);
    }
}


void Thread::start()
{
    assert(!started_);
    started_ = true;
    ThreadData *data = new ThreadData(func_, name_, &tid_, &latch_);
    if (pthread_create(&pthreadId_, NULL, &startThread, data))
    {   
        started_ = false;
        delete data;
    }
    else 
    {
        latch_.wait();
        assert(tid_ > 0);
    }
}

int Thread::join()
{
    assert(started_);
    assert(!joined_);
    joined_ = true;
    return pthread_join(pthreadId_, NULL);
}

void Thread::setDefaultName()
{
    if (name_.empty())
    {
        char buf[32];
        snprintf(buf, sizeof buf, "Thread");
        name_ = buf;
    }
}
