# CMake generated Testfile for 
# Source directory: /Users/tbrock/Code/mongo-cpp-driver
# Build directory: /Users/tbrock/Code/mongo-cpp-driver/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(test_mongo "/Users/tbrock/Code/mongo-cpp-driver/build/test/test_mongo")
ADD_TEST(test_bson "/Users/tbrock/Code/mongo-cpp-driver/build/test/test_bson")
SUBDIRS(src)
SUBDIRS(external)
SUBDIRS(test)
