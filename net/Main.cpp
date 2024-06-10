#include <getopt.h>
#include <string>
#include "EventLoop.h"
#include "Server.h"
#include "../base/Logging.h"
#include <iostream>
int main(int argc, char *argv[])
{
    int threadNum = 4;
    int port = 80;
    std::string logPath = "../log/WebServer.log";

    int opt;
    // const char *str = "t:l::p:";
    // while ((opt = getopt(argc, argv, str)) != -1) 
    // {
    //     switch (opt)
    //     {
    //     case 't':
    //         threadNum = atoi(optarg);
    //         break;
    //     case 'l':
    //         logPath = optarg;
    //         if (logPath.size() < 2 || optarg[0] != '/')
    //         {
    //             printf("logPath should start with \"/\"\n");
    //             abort();
    //         }
    //         break;
    //     case 'p':
    //         port = atoi(optarg);
    //         break;
    //     default:    
    //         break;
    //     }
    // }
    Logger::setLogFileName(logPath);
#ifndef _PTHREADS
    LOG << "_PTHREADS is not defined !";
#endif
    EventLoop mainLoop;
    Server myHttpServer(&mainLoop, threadNum, port);
    myHttpServer.start();
    mainLoop.loop();
}