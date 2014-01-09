#include <sstream>
#include <limits>
#include "gtest/gtest.h"
#include "bson/int32.h"

TEST(Int32, roundTrip)
{
    int num = 12345678;
    bson::Int32 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int32 n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(Int32, roundTripMax)
{
    int num = std::numeric_limits<int32_t>::max();
    bson::Int32 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int32 n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(Int32, roundTripMin)
{
    int num = std::numeric_limits<int32_t>::min();
    bson::Int32 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int32 n2(ss);
    ASSERT_EQ(n, n2);
}
