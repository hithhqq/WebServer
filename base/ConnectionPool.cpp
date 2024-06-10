#include "ConnectionPool.h"
#include "Thread.h"
#include <thread>
ConnectionPool *ConnectionPool::getConnectionPool()
{
    static ConnectionPool pool;
    return &pool;
}

std::shared_ptr<MysqlConn> ConnectionPool::getConnection()
{
    std::unique_lock<std::mutex> locker(mutex_);
    while (connectionQueue_.empty())
    {
        if (std::cv_status::timeout != cond_.wait_for(locker, std::chrono::microseconds(timeout_)))
        {
            if (!connectionQueue_.empty())
            {
                break;
            }
        }
    }
    std::shared_ptr<MysqlConn> connptr(connectionQueue_.front(),
    [this](MysqlConn* conn) {
        std::lock_guard<std::mutex> locker(mutex_);
        conn->refreshAliveTime();
        connectionQueue_.push(conn);
    });
    connectionQueue_.pop();
    cond_.notify_all();
    return connptr;
}

ConnectionPool::~ConnectionPool()
{
    while (!connectionQueue_.empty())
    {
        MysqlConn *conn = connectionQueue_.front();
        connectionQueue_.pop();
        delete conn;
        currentSize_--;
    }
}

ConnectionPool::ConnectionPool()
{
    init();
    for (int i = 0; i < minSize_; ++i)
    {
        addConnection();
        currentSize_++;
    }
    std::function<void()> func1 = std::bind(&ConnectionPool::produceConnection, this);
    std::function<void()> func2 = std::bind(&ConnectionPool::recycleConnection, this);
    Thread producer(func1, "producer");
    Thread recycler(func2, "recycler");
    producer.start();
    recycler.start();
}

void ConnectionPool::init()
{
    ip_ = "127.0.0.1";
    user_ = "root";
    passwd_ = "123456";
    dbName_ = "users";
    port_  = 3306;
    minSize_ = 2;
    maxSize_ = 4;
    timeout_ = 10;
    maxIdleTime_ = 5000;
}   

void ConnectionPool::produceConnection()
{
    while (true)
    {
        std::unique_lock<std::mutex> locker(mutex_);
        while (!connectionQueue_.empty())
        {
            cond_.wait(locker);
        }

        if (currentSize_ < maxSize_)
        {
            addConnection();
            currentSize_++;
            cond_.notify_all();
        }
    }
}

void ConnectionPool::recycleConnection()
{
    while (true)
    {
        std::this_thread::sleep_for(std::chrono::microseconds(500));
        std::lock_guard<std::mutex> locker(mutex_);
        while (connectionQueue_.size() > minSize_)
        {
            MysqlConn *conn = connectionQueue_.front();
            if (conn->getAliveTime() >= maxIdleTime_)
            {
                connectionQueue_.pop();
                delete conn;
                currentSize_--;
            }
            else
            {
                break;
            }
        }
    }
    
}

void ConnectionPool::addConnection()
{
    MysqlConn  *conn = new MysqlConn;
    conn->connect(user_, passwd_, dbName_, ip_, port_);
    conn->refreshAliveTime();
    connectionQueue_.push(conn);
    currentSize_++;
}

