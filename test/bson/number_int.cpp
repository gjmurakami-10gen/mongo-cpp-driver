#include <sstream>
#include <limits>
#include "gtest/gtest.h"
#include "bson/number_int.h"

TEST(NumberInt, bsonType)
{
    bson::NumberInt n(1);
    ASSERT_EQ(n.bsonType(), 0x10);
}

TEST(NumberInt, roundTrip)
{
    int num = 12345678;
    bson::NumberInt n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::NumberInt n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(NumberInt, roundTripMax)
{
    int num = std::numeric_limits<int32_t>::max();
    bson::NumberInt n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::NumberInt n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(NumberInt, roundTripMin)
{
    int num = std::numeric_limits<int32_t>::min();
    bson::NumberInt n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::NumberInt n2(ss);
    ASSERT_EQ(n, n2);
}
