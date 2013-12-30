#ifndef BSON_NUMBER_LONG_H_
#define BSON_NUMBER_LONG_H_
#include <cstdint>
#include "element.h"

namespace bson {

class NumberLong : public Element {
    private:
        static const char type = 0x12;
        int64_t value;

    public:
        NumberLong(int64_t n) : value(n) {};
        NumberLong(std::iostream &io) { io >> value; }
        inline void toBson(std::iostream &io) const { io << value; }
};

} // bson namespace
#endif
