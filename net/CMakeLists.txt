set(SRCS
    Channel.cpp
    Epoll.cpp
    EventLoop.cpp
    EventLoopThread.cpp
    EventLoopThreadPool.cpp
    HttpData.cpp
    Main.cpp
    Server.cpp
    Timer.cpp
    Util.cpp
)
add_executable(WebServerCXX ${SRCS})
target_link_directories(WebServerCXX PRIVATE ${PROJECT_SOURCE_DIR})
target_link_libraries(WebServerCXX libserver_base pthread rt mysqlclient)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -D_PTHREADS")
