#include "../base/ConnectionPool.h"
class Applicant // 申请人
{
public:
    Applicant(std::string username_, int money_) : username(username_), money(money_) {}
    bool withdraw(std::string username, int money)
    {
        std::string sql = "insert into applicate(username, money) values('" + username + "'," + std::to_string(money) + ")";
        ConnectionPool *pool = ConnectionPool::getConnectionPool();
        std::shared_ptr<MysqlConn> database = pool->getConnection();
        if(database->insert(sql) != 0)
        {
            return false;
        }
        return true;
    }
private:
    std::string username;
    int money;
};