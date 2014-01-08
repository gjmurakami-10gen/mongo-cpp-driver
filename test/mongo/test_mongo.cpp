#include "gtest/gtest.h"
#include "mongo/isfive.h"

TEST(IsFiveTest, Five)
{
    ASSERT_TRUE(isfive(5));
}

TEST(IsFiveTest, Six)
{
    ASSERT_FALSE(isfive(6));
}
