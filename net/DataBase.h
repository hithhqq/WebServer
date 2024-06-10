#pragma once
#include <mysql/mysql.h>
#include "../base/Logging.h"
#include <iostream>
class DataBase
{
public:
    void Init()
    {
        MYSQL mysql_conn;
        mysql =  mysql_init(&mysql_conn);
        if (mysql == nullptr)
        {
            LOG << "mysql init err\n";
            exit(1);
        }
        if (mysql_real_connect(mysql, "127.0.0.1", "root", "123456", "users", 3306, NULL, 0) == nullptr)
        {
            LOG << "connect err\n";
            exit(1);
        }
        std::cout << "连接成功\n";
        LOG << "连接成功\n";
    }
    int insert(const std::string &sql)
    {
        int ret = mysql_query(mysql, sql.c_str());
        if (ret != 0)
        {
            std::cout << "[ERR] mysql insert error: " << mysql_error(mysql) << "\n";
        }
        return ret;
    }
    std::string query(const std::string &sql)
    {   
        freeResult();
        if (mysql_query(mysql, sql.c_str()))
        {
           std::cerr << "查询失败" << mysql_error(mysql) << std::endl;
           return NULL;
        }
        result_ = mysql_store_result(mysql);
        MYSQL_ROW row;
        row = mysql_fetch_row(result_);
        if (row != nullptr)
        {
            return row[0];
        }
        else
        {
            std::cerr << "未找到数据" << std::endl;
        }
        return "";
    }
    ~DataBase()
    {
        if(mysql != nullptr)
        {
            mysql_close(mysql);
        }
        freeResult();
    }
private:
    MYSQL *mysql = nullptr;
    MYSQL_RES *result_ = nullptr;
    void freeResult()
    {
        if (result_)
        {
            mysql_free_result(result_);
            result_ = nullptr;
        }
    }
};
