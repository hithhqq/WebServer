# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yeye/WebServer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yeye/WebServer/build

# Include any dependencies generated for this target.
include net/CMakeFiles/WebServerCXX.dir/depend.make

# Include the progress variables for this target.
include net/CMakeFiles/WebServerCXX.dir/progress.make

# Include the compile flags for this target's objects.
include net/CMakeFiles/WebServerCXX.dir/flags.make

net/CMakeFiles/WebServerCXX.dir/Channel.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Channel.cpp.o: ../net/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Channel.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Channel.cpp.o -c /home/yeye/WebServer/net/Channel.cpp

net/CMakeFiles/WebServerCXX.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Channel.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Channel.cpp > CMakeFiles/WebServerCXX.dir/Channel.cpp.i

net/CMakeFiles/WebServerCXX.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Channel.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Channel.cpp -o CMakeFiles/WebServerCXX.dir/Channel.cpp.s

net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.o: ../net/Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Epoll.cpp.o -c /home/yeye/WebServer/net/Epoll.cpp

net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Epoll.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Epoll.cpp > CMakeFiles/WebServerCXX.dir/Epoll.cpp.i

net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Epoll.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Epoll.cpp -o CMakeFiles/WebServerCXX.dir/Epoll.cpp.s

net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o: ../net/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o -c /home/yeye/WebServer/net/EventLoop.cpp

net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/EventLoop.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/EventLoop.cpp > CMakeFiles/WebServerCXX.dir/EventLoop.cpp.i

net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/EventLoop.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/EventLoop.cpp -o CMakeFiles/WebServerCXX.dir/EventLoop.cpp.s

net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o: ../net/EventLoopThread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o -c /home/yeye/WebServer/net/EventLoopThread.cpp

net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/EventLoopThread.cpp > CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.i

net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/EventLoopThread.cpp -o CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.s

net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o: ../net/EventLoopThreadPool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o -c /home/yeye/WebServer/net/EventLoopThreadPool.cpp

net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/EventLoopThreadPool.cpp > CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.i

net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/EventLoopThreadPool.cpp -o CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.s

net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.o: ../net/HttpData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/HttpData.cpp.o -c /home/yeye/WebServer/net/HttpData.cpp

net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/HttpData.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/HttpData.cpp > CMakeFiles/WebServerCXX.dir/HttpData.cpp.i

net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/HttpData.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/HttpData.cpp -o CMakeFiles/WebServerCXX.dir/HttpData.cpp.s

net/CMakeFiles/WebServerCXX.dir/Main.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Main.cpp.o: ../net/Main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Main.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Main.cpp.o -c /home/yeye/WebServer/net/Main.cpp

net/CMakeFiles/WebServerCXX.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Main.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Main.cpp > CMakeFiles/WebServerCXX.dir/Main.cpp.i

net/CMakeFiles/WebServerCXX.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Main.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Main.cpp -o CMakeFiles/WebServerCXX.dir/Main.cpp.s

net/CMakeFiles/WebServerCXX.dir/Server.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Server.cpp.o: ../net/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Server.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Server.cpp.o -c /home/yeye/WebServer/net/Server.cpp

net/CMakeFiles/WebServerCXX.dir/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Server.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Server.cpp > CMakeFiles/WebServerCXX.dir/Server.cpp.i

net/CMakeFiles/WebServerCXX.dir/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Server.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Server.cpp -o CMakeFiles/WebServerCXX.dir/Server.cpp.s

net/CMakeFiles/WebServerCXX.dir/Timer.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Timer.cpp.o: ../net/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Timer.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Timer.cpp.o -c /home/yeye/WebServer/net/Timer.cpp

net/CMakeFiles/WebServerCXX.dir/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Timer.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Timer.cpp > CMakeFiles/WebServerCXX.dir/Timer.cpp.i

net/CMakeFiles/WebServerCXX.dir/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Timer.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Timer.cpp -o CMakeFiles/WebServerCXX.dir/Timer.cpp.s

net/CMakeFiles/WebServerCXX.dir/Util.cpp.o: net/CMakeFiles/WebServerCXX.dir/flags.make
net/CMakeFiles/WebServerCXX.dir/Util.cpp.o: ../net/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object net/CMakeFiles/WebServerCXX.dir/Util.cpp.o"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/WebServerCXX.dir/Util.cpp.o -c /home/yeye/WebServer/net/Util.cpp

net/CMakeFiles/WebServerCXX.dir/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WebServerCXX.dir/Util.cpp.i"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/net/Util.cpp > CMakeFiles/WebServerCXX.dir/Util.cpp.i

net/CMakeFiles/WebServerCXX.dir/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WebServerCXX.dir/Util.cpp.s"
	cd /home/yeye/WebServer/build/net && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/net/Util.cpp -o CMakeFiles/WebServerCXX.dir/Util.cpp.s

# Object files for target WebServerCXX
WebServerCXX_OBJECTS = \
"CMakeFiles/WebServerCXX.dir/Channel.cpp.o" \
"CMakeFiles/WebServerCXX.dir/Epoll.cpp.o" \
"CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o" \
"CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o" \
"CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o" \
"CMakeFiles/WebServerCXX.dir/HttpData.cpp.o" \
"CMakeFiles/WebServerCXX.dir/Main.cpp.o" \
"CMakeFiles/WebServerCXX.dir/Server.cpp.o" \
"CMakeFiles/WebServerCXX.dir/Timer.cpp.o" \
"CMakeFiles/WebServerCXX.dir/Util.cpp.o"

# External object files for target WebServerCXX
WebServerCXX_EXTERNAL_OBJECTS =

../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Channel.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Epoll.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/EventLoop.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/EventLoopThread.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/EventLoopThreadPool.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/HttpData.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Main.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Server.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Timer.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/Util.cpp.o
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/build.make
../bin/WebServerCXX: base/libserver_base.a
../bin/WebServerCXX: net/CMakeFiles/WebServerCXX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yeye/WebServer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable ../../bin/WebServerCXX"
	cd /home/yeye/WebServer/build/net && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WebServerCXX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
net/CMakeFiles/WebServerCXX.dir/build: ../bin/WebServerCXX

.PHONY : net/CMakeFiles/WebServerCXX.dir/build

net/CMakeFiles/WebServerCXX.dir/clean:
	cd /home/yeye/WebServer/build/net && $(CMAKE_COMMAND) -P CMakeFiles/WebServerCXX.dir/cmake_clean.cmake
.PHONY : net/CMakeFiles/WebServerCXX.dir/clean

net/CMakeFiles/WebServerCXX.dir/depend:
	cd /home/yeye/WebServer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yeye/WebServer /home/yeye/WebServer/net /home/yeye/WebServer/build /home/yeye/WebServer/build/net /home/yeye/WebServer/build/net/CMakeFiles/WebServerCXX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : net/CMakeFiles/WebServerCXX.dir/depend

