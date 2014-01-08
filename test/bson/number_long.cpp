#include <sstream>
#include "gtest/gtest.h"
#include "bson/number_int.h"

TEST(NumberLong, bsonType)
{
    bson::NumberInt n(1);
    ASSERT_EQ(n.bsonType(), 0x10);
}

TEST(NumberLong, roundTrip)
{
    int num = 1234;
    bson::NumberInt n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::NumberInt n2(ss);
    ASSERT_EQ(n, n2);
}
