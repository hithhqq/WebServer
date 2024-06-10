#include "MysqlConn.h"

MysqlConn::MysqlConn()
{
    conn_ = mysql_init(nullptr);
    mysql_set_character_set(conn_, "utf8");
}

MysqlConn::~MysqlConn()
{
    if (conn_ != nullptr) {
        mysql_close(conn_);
    }
    freeResult();
}

bool MysqlConn::connect(const std::string &user, const std::string &passwd, const std::string &dbName, const std::string &ip, const unsigned int &port)
{
    MYSQL *mysql = mysql_real_connect(conn_, ip.c_str(), user.c_str(), passwd.c_str(), dbName.c_str(), port, nullptr, 0);
    return mysql != nullptr;
}

bool MysqlConn::update(const std::string sql)
{
    return false;
}

std::string MysqlConn::query(const std::string sql)
{
     
    freeResult();
    if (mysql_query(conn_, sql.c_str()))
    {
        std::cerr << "查询失败" << mysql_error(conn_) << std::endl;
        return "";
    }
    result_ = mysql_store_result(conn_);
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

int MysqlConn::insert(const std::string sql)
{
    int ret = mysql_query(conn_, sql.c_str());
    if (ret != 0)
    {
        std::cout << "[ERR] mysql insert error: " << mysql_error(conn_) << "\n";
    }
    return ret;
}

void MysqlConn::refreshAliveTime()
{
    m_alivetime =  std::chrono::steady_clock::now();
}

long long MysqlConn::getAliveTime()
{
    std::chrono::nanoseconds res = std::chrono::steady_clock::now() - m_alivetime;
    std::chrono::milliseconds millsec = std::chrono::duration_cast<std::chrono::milliseconds>(res);
    return millsec.count();
}

void MysqlConn::freeResult()
{
    if (result_)
    {
        mysql_free_result(result_);
        result_ = nullptr;
    }
}
