#ifndef BSON_NUMBER_LONG_H_
#define BSON_NUMBER_LONG_H_
#include <cstdint>

namespace bson {

class NumberLong {
    private:
        static const char type = 0x12;
        int64_t value;

    public:
        NumberLong(int64_t n) : value(n) {};
        inline int64_t bsonValue() const { return value; }
        inline char bsonType() const { return type; }
};

} // bson namespace
#endif
