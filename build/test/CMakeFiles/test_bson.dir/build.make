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
CMAKE_SOURCE_DIR = /Users/tbrock/Code/mongo-cpp-driver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tbrock/Code/mongo-cpp-driver/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test_bson.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_bson.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_bson.dir/flags.make

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o: test/CMakeFiles/test_bson.dir/flags.make
test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o: ../test/bson/test_bson.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/tbrock/Code/mongo-cpp-driver/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o"
	cd /Users/tbrock/Code/mongo-cpp-driver/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_bson.dir/bson/test_bson.cpp.o -c /Users/tbrock/Code/mongo-cpp-driver/test/bson/test_bson.cpp

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_bson.dir/bson/test_bson.cpp.i"
	cd /Users/tbrock/Code/mongo-cpp-driver/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/tbrock/Code/mongo-cpp-driver/test/bson/test_bson.cpp > CMakeFiles/test_bson.dir/bson/test_bson.cpp.i

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_bson.dir/bson/test_bson.cpp.s"
	cd /Users/tbrock/Code/mongo-cpp-driver/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/tbrock/Code/mongo-cpp-driver/test/bson/test_bson.cpp -o CMakeFiles/test_bson.dir/bson/test_bson.cpp.s

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.requires:
.PHONY : test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.requires

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.provides: test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/test_bson.dir/build.make test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.provides.build
.PHONY : test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.provides

test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.provides.build: test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o

# Object files for target test_bson
test_bson_OBJECTS = \
"CMakeFiles/test_bson.dir/bson/test_bson.cpp.o"

# External object files for target test_bson
test_bson_EXTERNAL_OBJECTS =

test/test_bson: test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o
test/test_bson: test/CMakeFiles/test_bson.dir/build.make
test/test_bson: external/gtest-1.7.0/libgtest.a
test/test_bson: external/gtest-1.7.0/libgtest_main.a
test/test_bson: src/bson/libbson.a
test/test_bson: external/gtest-1.7.0/libgtest.a
test/test_bson: test/CMakeFiles/test_bson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test_bson"
	cd /Users/tbrock/Code/mongo-cpp-driver/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_bson.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_bson.dir/build: test/test_bson
.PHONY : test/CMakeFiles/test_bson.dir/build

test/CMakeFiles/test_bson.dir/requires: test/CMakeFiles/test_bson.dir/bson/test_bson.cpp.o.requires
.PHONY : test/CMakeFiles/test_bson.dir/requires

test/CMakeFiles/test_bson.dir/clean:
	cd /Users/tbrock/Code/mongo-cpp-driver/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_bson.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_bson.dir/clean

test/CMakeFiles/test_bson.dir/depend:
	cd /Users/tbrock/Code/mongo-cpp-driver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tbrock/Code/mongo-cpp-driver /Users/tbrock/Code/mongo-cpp-driver/test /Users/tbrock/Code/mongo-cpp-driver/build /Users/tbrock/Code/mongo-cpp-driver/build/test /Users/tbrock/Code/mongo-cpp-driver/build/test/CMakeFiles/test_bson.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_bson.dir/depend
