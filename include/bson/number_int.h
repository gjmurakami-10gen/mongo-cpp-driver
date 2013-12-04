#ifndef BSON_NUMBER_INT_H_
#define BSON_NUMBER_INT_H_
#include <cstdint>

namespace bson {

class NumberInt {
    private:
        static const char type = 0x10;
        int32_t value;

    public:
        NumberInt(int32_t n) : value(n) {}
        inline int32_t bsonValue() const { return value; }
        inline char bsonType() const { return type; }
};

} // bson namespace
#endif
