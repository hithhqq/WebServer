#pragma once

#include <iostream>
#include <mysql/mysql.h>

#include <chrono>
using std::chrono::steady_clock;

class MysqlConn
{
public:
    MysqlConn();
    ~MysqlConn();
    bool connect(const std::string &user, const std::string& passwd, const std::string &dbName, const std::string &ip, const unsigned int &port = 3306);
    bool update(const std::string sql);
    std::string query(const std::string sql);
    int insert(const std::string sql);
    bool rollback();
    void refreshAliveTime();
    long long getAliveTime();
private:
    void freeResult();
    MYSQL *conn_ = nullptr;
    MYSQL_RES *result_ = nullptr;
    MYSQL_ROW row_ = nullptr;
    std::chrono::steady_clock::time_point m_alivetime;
};