add_executable(LoggingTest LoggingTest.cpp)
target_link_libraries(LoggingTest libserver_base)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g")