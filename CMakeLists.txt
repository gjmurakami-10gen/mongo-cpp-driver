cmake_minimum_required(VERSION 2.6)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${PROJECT_SOURCE_DIR}/src)

add_subdirectory(src)

# turn on with cmake -Dtest=ON
option(test "Build and run tests" OFF)

if(test)
    # Get and build gtest
    include(ExternalProject)
    set_directory_properties(PROPERTIES EP_PREFIX ${CMAKE_BINARY_DIR}/external)
    ExternalProject_Add(
        googletest
        SVN_REPOSITORY http://googletest.googlecode.com/svn/trunk/
        SVN_REVISION -r 671 # 1.7.0+
        INSTALL_COMMAND ""
        LOG_DOWNLOAD ON
        LOG_CONFIGURE ON
        LOG_BUILD ON
    )

    # Add include dir
    ExternalProject_Get_Property(googletest source_dir)
    include_directories(${source_dir}/include)

    # Add library dir
    ExternalProject_Get_Property(googletest binary_dir)
    link_directories(${binary_dir})

    # Build the tests
    add_subdirectory(test)
    enable_testing()
    add_test(NAME test_mongo COMMAND test_mongo)
    add_test(NAME test_bson COMMAND test_bson)
endif()
