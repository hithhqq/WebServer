#include "../Logging.h"
#include "../Thread.h"
#include <iostream>
#include <string>
#include <vector>
void threadFunc()
{
    for (int i = 0; i < 10000; ++i)
    {
        LOG << i;
    }
}
std::mutex mutex_;
void mutithreadFunc()
{
    // std::lock_guard<std::mutex> lock(mutex_);
    LOG << "duoxiancheng";
}

void type_test()
{
    std::cout << "---type test ---" << std::endl;
    LOG << 0;
    LOG << 123456;
    LOG << 1.111;
    LOG << 3.14f;
    LOG << (short)1;
    LOG << (unsigned int)1;
    LOG << (unsigned long) 1;
    LOG << (long double) 1.6555556;
    LOG << (unsigned long long) 1;
    LOG << 'c';
    LOG << "abcdefg";
    LOG << std::string("This is a string");
}
void stressing_single_thread()
{
    // 100000 lines
    std::cout << "----------stressing test single thread-----------" << std::endl;
    for (int i = 0; i < 100000; ++i)
    {
        LOG << i;
    }
}
void stressing_multi_threads(int threadNum = 2)
{
    // threadNum * 100000 lines
    std::cout << "----------stressing test multi thread-----------" << std::endl;
    std::vector<std::shared_ptr<Thread>> vsp;
    for (int i = 0; i < threadNum; ++i)
    {
        std::shared_ptr<Thread> tmp(new Thread(mutithreadFunc, "testFunc"));
        vsp.push_back(tmp);
    }
    for (int i = 0; i < threadNum; ++i)
    {
        vsp[i]->start();
    }
    sleep(3);
}   

void other()
{
    // 1 line
    std::cout << "----------other test-----------" <<std::endl;
    LOG << "fddsa" << 'c' << 0 << 3.666 << std::string("This is a string");

}

int main()
{
    // 共500014行
    // type_test();
    // sleep(3);

    // stressing_single_thread();
    // sleep(3);

    // other();
    // sleep(3);

    stressing_multi_threads();
    sleep(3);
    return 0;
}