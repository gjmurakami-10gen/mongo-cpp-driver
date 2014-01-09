# C++ Driver for MongoDB
[![Build Status](https://travis-ci.org/TylerBrock/mongo-cpp-driver.png?branch=master)](https://travis-ci.org/TylerBrock/mongo-cpp-driver)

## Instructions to build
```sh
# Setup the build dir and makefile
mkdir build
cd build
cmake -Dtest=ON ..

# Make some things
make
make test
```

# Run an individual test with gtest output visible - example
./test/test_bson
