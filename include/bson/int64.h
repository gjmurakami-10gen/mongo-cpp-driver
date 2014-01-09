#ifndef BSON_INT64_H_
#define BSON_INT64_H_
#include <cstdint>
#include "element.h"

namespace bson {

    class Int64 : public Element {
        private:
            static const char type = 0x12;
            int64_t value;

        public:
            Int64(int64_t n) : value(n) {}
            Int64(std::iostream &io);
            void bsonValue(std::iostream &io) const;
            bool operator==(const Int64 &rhs) const;
    };

    inline Int64::Int64(std::iostream &io) {
        getInt64(io, value);
    }

    inline void Int64::bsonValue(std::iostream &io) const {
        putInt64(io, value);
    }

    inline bool Int64::operator==(const Int64 & rhs) const {
        return value == rhs.value;
    }

} // bson namespace
#endif
