# A C++ High Performance Web Server
## Introduction
本项目为C++11编写的Web服务器，解析了get、head请求，可处理静态资源，支持HTTP长连接，支持管线化请求，并实现了异步日志，记录服务器运行状态。
## Envoirment
- 操作系统 Ubantu 20.04.
- 编译器：g++ 9.4.0
- 项目构建：cmake 3.16.3 
## Technical points
1. 使用Epoll边沿触发的IO多路复用技术，非阻塞IO，使用Reactor模式
2. 使用多线程充分利用多核CPU，并使用线程池避免线程频繁创建销毁的开销
3. 使用基于小根堆的定时器关闭超时请求
4. 主线程只负责accept请求，并以Round Robin的方式分发给其它IO线程(兼计算线程)，锁的争用只会出现在主线程和某一特定线程中
5. 使用eventfd实现了线程的异步唤醒
6. 使用双缓冲区技术实现了简单的异步日志系统
7. 为减少内存泄漏的可能，使用智能指针等RAII机制
8. 使用状态机解析了HTTP请求,支持管线化
9. 支持优雅关闭连接
10. 使用数据库连接池，优化数据库的操作
## Model
![并发模型](https://github.com/hithhqq/WebServer/assets/116792761/83fec079-ac23-4825-95a0-0dd86af972d8)

