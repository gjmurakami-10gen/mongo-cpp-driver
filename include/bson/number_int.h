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
            NumberInt(std::iostream &io);
            char bsonType() const;
            void bsonValue(std::iostream &io) const;
            bool operator==(const NumberInt &rhs) const;
    };

    inline NumberInt::NumberInt(std::iostream &io) {
        getInt32(io, value);
    }

    inline char NumberInt::bsonType() const {
        return type;
    }

    inline void NumberInt::bsonValue(std::iostream &io) const {
        putInt32(io, value);
    }

    inline bool NumberInt::operator==(const NumberInt &rhs) const {
        return value == rhs.value;
    }

} // bson namespace
#endif
