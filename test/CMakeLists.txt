include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})
add_executable(test_bson
    bson/int32.cpp
    bson/int64.cpp
    bson/string.cpp
)
add_dependencies(test_bson googletest)
target_link_libraries(test_bson gtest gtest_main)
target_link_libraries(test_bson bson)

#add_executable(test_mongo mongo/test_mongo.cpp)
#target_link_libraries(test_mongo gtest gtest_main)
#target_link_libraries(test_mongo isfive)
