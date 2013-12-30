#ifndef BSON_NUMBER_INT_H_
#define BSON_NUMBER_INT_H_
#include <cstdint>
#include "element.h"

namespace bson {

class NumberInt : public Element {
    private:
        static const char type = 0x10;
        int32_t value;

    public:
        NumberInt(int32_t n) : value(n) { }
        NumberInt(std::iostream &io) { io >> value; }
        inline void toBson(std::iostream &io) const { io << value; }
};

} // bson namespace
#endif
