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
CMAKE_SOURCE_DIR = /home/yeye/WebServer/base

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yeye/WebServer/base/build

# Include any dependencies generated for this target.
include CMakeFiles/libserver_base.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/libserver_base.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/libserver_base.dir/flags.make

CMakeFiles/libserver_base.dir/AsyncLogging.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/AsyncLogging.o: ../AsyncLogging.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/libserver_base.dir/AsyncLogging.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/AsyncLogging.o -c /home/yeye/WebServer/base/AsyncLogging.cpp

CMakeFiles/libserver_base.dir/AsyncLogging.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/AsyncLogging.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/AsyncLogging.cpp > CMakeFiles/libserver_base.dir/AsyncLogging.i

CMakeFiles/libserver_base.dir/AsyncLogging.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/AsyncLogging.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/AsyncLogging.cpp -o CMakeFiles/libserver_base.dir/AsyncLogging.s

CMakeFiles/libserver_base.dir/CountDownLatch.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/CountDownLatch.o: ../CountDownLatch.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/libserver_base.dir/CountDownLatch.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/CountDownLatch.o -c /home/yeye/WebServer/base/CountDownLatch.cpp

CMakeFiles/libserver_base.dir/CountDownLatch.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/CountDownLatch.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/CountDownLatch.cpp > CMakeFiles/libserver_base.dir/CountDownLatch.i

CMakeFiles/libserver_base.dir/CountDownLatch.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/CountDownLatch.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/CountDownLatch.cpp -o CMakeFiles/libserver_base.dir/CountDownLatch.s

CMakeFiles/libserver_base.dir/FileUtil.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/FileUtil.o: ../FileUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/libserver_base.dir/FileUtil.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/FileUtil.o -c /home/yeye/WebServer/base/FileUtil.cpp

CMakeFiles/libserver_base.dir/FileUtil.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/FileUtil.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/FileUtil.cpp > CMakeFiles/libserver_base.dir/FileUtil.i

CMakeFiles/libserver_base.dir/FileUtil.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/FileUtil.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/FileUtil.cpp -o CMakeFiles/libserver_base.dir/FileUtil.s

CMakeFiles/libserver_base.dir/LogFile.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/LogFile.o: ../LogFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/libserver_base.dir/LogFile.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/LogFile.o -c /home/yeye/WebServer/base/LogFile.cpp

CMakeFiles/libserver_base.dir/LogFile.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/LogFile.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/LogFile.cpp > CMakeFiles/libserver_base.dir/LogFile.i

CMakeFiles/libserver_base.dir/LogFile.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/LogFile.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/LogFile.cpp -o CMakeFiles/libserver_base.dir/LogFile.s

CMakeFiles/libserver_base.dir/Logging.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/Logging.o: ../Logging.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/libserver_base.dir/Logging.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/Logging.o -c /home/yeye/WebServer/base/Logging.cpp

CMakeFiles/libserver_base.dir/Logging.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/Logging.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/Logging.cpp > CMakeFiles/libserver_base.dir/Logging.i

CMakeFiles/libserver_base.dir/Logging.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/Logging.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/Logging.cpp -o CMakeFiles/libserver_base.dir/Logging.s

CMakeFiles/libserver_base.dir/LogStream.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/LogStream.o: ../LogStream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/libserver_base.dir/LogStream.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/LogStream.o -c /home/yeye/WebServer/base/LogStream.cpp

CMakeFiles/libserver_base.dir/LogStream.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/LogStream.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/LogStream.cpp > CMakeFiles/libserver_base.dir/LogStream.i

CMakeFiles/libserver_base.dir/LogStream.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/LogStream.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/LogStream.cpp -o CMakeFiles/libserver_base.dir/LogStream.s

CMakeFiles/libserver_base.dir/Thread.o: CMakeFiles/libserver_base.dir/flags.make
CMakeFiles/libserver_base.dir/Thread.o: ../Thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/libserver_base.dir/Thread.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserver_base.dir/Thread.o -c /home/yeye/WebServer/base/Thread.cpp

CMakeFiles/libserver_base.dir/Thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserver_base.dir/Thread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yeye/WebServer/base/Thread.cpp > CMakeFiles/libserver_base.dir/Thread.i

CMakeFiles/libserver_base.dir/Thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserver_base.dir/Thread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yeye/WebServer/base/Thread.cpp -o CMakeFiles/libserver_base.dir/Thread.s

# Object files for target libserver_base
libserver_base_OBJECTS = \
"CMakeFiles/libserver_base.dir/AsyncLogging.o" \
"CMakeFiles/libserver_base.dir/CountDownLatch.o" \
"CMakeFiles/libserver_base.dir/FileUtil.o" \
"CMakeFiles/libserver_base.dir/LogFile.o" \
"CMakeFiles/libserver_base.dir/Logging.o" \
"CMakeFiles/libserver_base.dir/LogStream.o" \
"CMakeFiles/libserver_base.dir/Thread.o"

# External object files for target libserver_base
libserver_base_EXTERNAL_OBJECTS =

libserver_base.a: CMakeFiles/libserver_base.dir/AsyncLogging.o
libserver_base.a: CMakeFiles/libserver_base.dir/CountDownLatch.o
libserver_base.a: CMakeFiles/libserver_base.dir/FileUtil.o
libserver_base.a: CMakeFiles/libserver_base.dir/LogFile.o
libserver_base.a: CMakeFiles/libserver_base.dir/Logging.o
libserver_base.a: CMakeFiles/libserver_base.dir/LogStream.o
libserver_base.a: CMakeFiles/libserver_base.dir/Thread.o
libserver_base.a: CMakeFiles/libserver_base.dir/build.make
libserver_base.a: CMakeFiles/libserver_base.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yeye/WebServer/base/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libserver_base.a"
	$(CMAKE_COMMAND) -P CMakeFiles/libserver_base.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libserver_base.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/libserver_base.dir/build: libserver_base.a

.PHONY : CMakeFiles/libserver_base.dir/build

CMakeFiles/libserver_base.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/libserver_base.dir/cmake_clean.cmake
.PHONY : CMakeFiles/libserver_base.dir/clean

CMakeFiles/libserver_base.dir/depend:
	cd /home/yeye/WebServer/base/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yeye/WebServer/base /home/yeye/WebServer/base /home/yeye/WebServer/base/build /home/yeye/WebServer/base/build /home/yeye/WebServer/base/build/CMakeFiles/libserver_base.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/libserver_base.dir/depend

