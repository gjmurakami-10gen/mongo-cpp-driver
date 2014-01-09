#include <sstream>
#include <limits>
#include "gtest/gtest.h"
#include "bson/int64.h"

TEST(Int64, roundTrip)
{
    int num = 12345678;
    bson::Int64 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int64 n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(Int64, roundTripMax)
{
    int num = std::numeric_limits<int64_t>::max();
    bson::Int64 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int64 n2(ss);
    ASSERT_EQ(n, n2);
}

TEST(Int64, roundTripMin)
{
    int num = std::numeric_limits<int64_t>::min();
    bson::Int64 n(num);
    std::stringstream ss;
    n.bsonValue(ss);
    bson::Int64 n2(ss);
    ASSERT_EQ(n, n2);
}
