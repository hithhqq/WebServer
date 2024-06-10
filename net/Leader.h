class AbstractLeader //抽象领导
{
public:
    void setNext(std::shared_ptr<AbstractLeader> manager)
    {
        m_next = manager;
    }
    virtual int handleRequest(int money) = 0;
    ~AbstractLeader() = default;
protected:
    std::shared_ptr<AbstractLeader> m_next;
};

class PLeader : public AbstractLeader // 项目经理
{
public:
    int handleRequest(int money) override
    {
        if (money <= 500)
        {
            return 1;
        }
        else
        {
            return m_next->handleRequest(money);
        }
    }
};
class DLeader : public AbstractLeader // 部门经理
{
public:
    int handleRequest(int money) override
    {
        if (money <= 1000)
        {
            return 2;
        }
        else
        {
            return m_next->handleRequest(money);
        }
    }
};
class GLeader : public AbstractLeader // 总经理
{
public:
    int handleRequest(int money) override
    {
        if (money <= 3000)
        {
            return 3;
        }
        else
        {
            return -1;
        }
    }
};