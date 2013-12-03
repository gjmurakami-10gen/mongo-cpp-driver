cmake_minimum_required(VERSION 2.6)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${PROJECT_SOURCE_DIR}/src)

add_subdirectory(src)

# turn on with cmake -Dtest=ON
option(test "Build and run tests" OFF)

if (test)
    add_subdirectory(vendor)
    add_subdirectory(test)
    enable_testing()
    add_test(NAME test_mongo COMMAND test_mongo)
    add_test(NAME test_bson COMMAND test_bson)
endif()
