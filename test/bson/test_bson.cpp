#include "gtest/gtest.h"
#include "bson/number_int.h"
#include "bson/number_long.h"
#include "bson/string.h"

TEST(NumberInt, bsonValue)
{
    bson::NumberInt n(1);
    ASSERT_EQ(n.bsonValue(), 1);
}

TEST(NumberInt, bsonType)
{
    bson::NumberInt n(1);
    ASSERT_EQ(n.bsonType(), 0x10);
}

TEST(NumberLong, bsonValue)
{
    bson::NumberLong n(1);
    ASSERT_EQ(n.bsonValue(), 1);
}

TEST(NumberLong, bsonType)
{
    bson::NumberLong n(1);
    ASSERT_EQ(n.bsonType(), 0x12);
}

TEST(String, bsonValue)
{
    bson::String s("Tyler");
    ASSERT_EQ(s.bsonValue(), "Tyler");
}

TEST(String, bsonType)
{
    bson::String s("Tyler");
    ASSERT_EQ(s.bsonType(), 0x02);
}
