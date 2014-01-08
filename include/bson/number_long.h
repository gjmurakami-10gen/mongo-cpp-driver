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
            NumberLong(int64_t n) : value(n) {}
            NumberLong(std::iostream &io);
            void toBson(std::iostream &io) const;
    };

    inline NumberLong::NumberLong(std::iostream &io) {
        char bytes[8];
        io.read(bytes, 8);
        value = 
            bytes[0] |
            ((int64_t)bytes[1] << 8) |
            ((int64_t)bytes[2] << 16) |
            ((int64_t)bytes[3] << 24) |
            ((int64_t)bytes[4] << 32) |
            ((int64_t)bytes[5] << 40) |
            ((int64_t)bytes[6] << 48) |
            ((int64_t)bytes[7] << 56);
    }

    inline void NumberLong::toBson(std::iostream &io) const {
        //io.write(value, 8);
    }

} // bson namespace
#endif
