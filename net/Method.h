#include "Leader.h"
#include "Applicant.h"
#include <memory>
class AbstractMethod
{
public:
    virtual void WriteApplication(int money) = 0; // 填写申请表
    virtual int SubApplication(std::string username, int money) = 0; // 提交申请
    int apply(std::string username, int money)
    {
        WriteApplication(money);
        int res = SubApplication(username, money);
        return res;
    }
    ~AbstractMethod(){}
};
class Method : public AbstractMethod
{
public:
    void WriteApplication(int money) override
    {

    }
    int SubApplication(std::string username, int money) override
    {
        std::shared_ptr<AbstractLeader> pleader = std::make_shared<PLeader>();
        std::shared_ptr<AbstractLeader> dleader = std::make_shared<DLeader>();
        std::shared_ptr<AbstractLeader> gleader = std::make_shared<GLeader>();
        pleader->setNext(dleader);
        dleader->setNext(gleader);
        int res = pleader->handleRequest(money);
        if(res != -1)
        {
            Applicant applicant(username, money);
            if (!applicant.withdraw(username, money))
            {
                return -1;
            }
        }
        else
        {
            return -1;
        } 
        return res;  
    }
};  