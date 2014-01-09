#ifndef BSON_INT32_
#define BSON_INT32_
#include <cstdint>
#include "element.h"

namespace bson {

    class Int32 : public Element {
        private:
            static const char type = 0x10;
            int32_t value;

        public:
            Int32(int32_t n) : value(n) { }
            Int32(std::iostream &io);
            void bsonValue(std::iostream &io) const;
            bool operator==(const Int32 &rhs) const;
    };

    inline Int32::Int32(std::iostream &io) {
        getInt32(io, value);
    }

    inline void Int32::bsonValue(std::iostream &io) const {
        putInt32(io, value);
    }

    inline bool Int32::operator==(const Int32 &rhs) const {
        return value == rhs.value;
    }

} // bson namespace
#endif
