cmake_minimum_required(VERSION 2.8)
project(Webserver)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_subdirectory(base)
add_subdirectory(net)
add_subdirectory(test)