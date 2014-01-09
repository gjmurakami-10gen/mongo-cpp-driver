#include "gtest/gtest.h"
#include "bson/string.h"

TEST(String, bsonValue)
{
    const char * bson = "\\x00\\x00\\x00\\x00Tyler";
    std::string str = "Tyler";
    bson::String value(str);
    std::stringstream ss;
    value.bsonValue(ss);
    ASSERT_EQ(ss.str(), bson);
}
