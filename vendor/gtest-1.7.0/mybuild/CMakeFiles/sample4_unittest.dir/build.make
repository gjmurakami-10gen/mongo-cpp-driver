# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild

# Include any dependencies generated for this target.
include CMakeFiles/sample4_unittest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sample4_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sample4_unittest.dir/flags.make

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o: CMakeFiles/sample4_unittest.dir/flags.make
CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o: ../samples/sample4_unittest.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o -c /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4_unittest.cc

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4_unittest.cc > CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.i

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4_unittest.cc -o CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.s

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.requires:
.PHONY : CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.requires

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.provides: CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.requires
	$(MAKE) -f CMakeFiles/sample4_unittest.dir/build.make CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.provides.build
.PHONY : CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.provides

CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.provides.build: CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o: CMakeFiles/sample4_unittest.dir/flags.make
CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o: ../samples/sample4.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o -c /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4.cc

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample4_unittest.dir/samples/sample4.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4.cc > CMakeFiles/sample4_unittest.dir/samples/sample4.cc.i

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample4_unittest.dir/samples/sample4.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/samples/sample4.cc -o CMakeFiles/sample4_unittest.dir/samples/sample4.cc.s

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.requires:
.PHONY : CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.requires

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.provides: CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.requires
	$(MAKE) -f CMakeFiles/sample4_unittest.dir/build.make CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.provides.build
.PHONY : CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.provides

CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.provides.build: CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o

# Object files for target sample4_unittest
sample4_unittest_OBJECTS = \
"CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o" \
"CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o"

# External object files for target sample4_unittest
sample4_unittest_EXTERNAL_OBJECTS =

sample4_unittest: CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o
sample4_unittest: CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o
sample4_unittest: CMakeFiles/sample4_unittest.dir/build.make
sample4_unittest: libgtest_main.a
sample4_unittest: libgtest.a
sample4_unittest: CMakeFiles/sample4_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sample4_unittest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample4_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sample4_unittest.dir/build: sample4_unittest
.PHONY : CMakeFiles/sample4_unittest.dir/build

CMakeFiles/sample4_unittest.dir/requires: CMakeFiles/sample4_unittest.dir/samples/sample4_unittest.cc.o.requires
CMakeFiles/sample4_unittest.dir/requires: CMakeFiles/sample4_unittest.dir/samples/sample4.cc.o.requires
.PHONY : CMakeFiles/sample4_unittest.dir/requires

CMakeFiles/sample4_unittest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sample4_unittest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sample4_unittest.dir/clean

CMakeFiles/sample4_unittest.dir/depend:
	cd /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0 /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0 /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild /Users/tbrock/Code/mongo-cpp-driver/gtest-1.7.0/mybuild/CMakeFiles/sample4_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sample4_unittest.dir/depend

