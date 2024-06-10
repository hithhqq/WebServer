#pragma once

#include "MysqlConn.h"

#include <memory>
#include <queue>
#include <mutex>
#include <condition_variable>

class ConnectionPool
{
public:
    static ConnectionPool *getConnectionPool();
    std::shared_ptr<MysqlConn> getConnection();
    ~ConnectionPool();
private:   
    ConnectionPool();
    ConnectionPool(const ConnectionPool& obj) = delete;
    ConnectionPool& operator=(const ConnectionPool& obj) = delete;
    
    void init();
    void produceConnection();
    void recycleConnection();
    void addConnection();
    
    std::string ip_;
    std::string user_;
    std::string passwd_;
    std::string dbName_;
    unsigned short port_;
    int minSize_;
    int maxSize_;
    int currentSize_;
    int timeout_;
    int maxIdleTime_;
    std::queue<MysqlConn*> connectionQueue_; // 连接池队列
    std::mutex mutex_; 
    std::condition_variable cond_;
};