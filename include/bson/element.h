#ifndef BSON_ELEMENT_H_
#define BSON_ELEMENT_H_
#include <iostream>
#include <cstdint>
#include "portable_endian.h"

namespace bson {

    class Element {
        protected:
            void putInt32(std::iostream &io, const int32_t &value) const;
            void getInt32(std::iostream &io, int32_t &value);
            void putInt64(std::iostream &io, const int64_t &value) const;
            void getInt64(std::iostream &io, int64_t &value);
    };

    inline void Element::putInt32(std::iostream &io, const int32_t &value) const {
        uint32_t little_endian = htole32(value);
        io.write(reinterpret_cast<const char *>(&little_endian), sizeof(value));
    }

    inline void Element::getInt32(std::iostream &io, int32_t &value) {
        char * bytes = reinterpret_cast<char *>(&value);
        io.read(bytes, sizeof(value));
        value = le32toh(value);
    }

    inline void Element::putInt64(std::iostream &io, const int64_t &value) const {
        uint64_t little_endian = htole32(value);
        io.write(reinterpret_cast<const char *>(&little_endian), sizeof(value));
    }

    inline void Element::getInt64(std::iostream &io, int64_t &value) {
        char * bytes = reinterpret_cast<char *>(&value);
        io.read(bytes, sizeof(value));
        value = le64toh(value);
    }

} // bson namespace
#endif
