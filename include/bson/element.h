#ifndef BSON_ELEMENT_H_
#define BSON_ELEMENT_H_
#include <iostream>
#include <cstdint>
#include <string>
#include "portable_endian.h"

namespace bson {
    using std::iostream;
    using std::string;

    class Element {
        protected:
            void putInt32(iostream &io, const int32_t &value) const;
            void getInt32(iostream &io, int32_t &value);
            void putInt64(iostream &io, const int64_t &value) const;
            void getInt64(iostream &io, int64_t &value);
            void putCString(iostream &io, const string &value) const;
            void getCString(iostream &io, string &value);
            void putString(iostream &io, const string &value) const;
            void getString(iostream &io, string &value);
    };

    inline void Element::putInt32(iostream &io, const int32_t &value) const {
        uint32_t little_endian = htole32(value);
        io.write(reinterpret_cast<const char *>(&little_endian), sizeof(value));
    }

    inline void Element::getInt32(iostream &io, int32_t &value) {
        char * bytes = reinterpret_cast<char *>(&value);
        io.read(bytes, sizeof(value));
        value = le32toh(value);
    }

    inline void Element::putInt64(iostream &io, const int64_t &value) const {
        uint64_t little_endian = htole64(value);
        io.write(reinterpret_cast<const char *>(&little_endian), sizeof(value));
    }

    inline void Element::getInt64(iostream &io, int64_t &value) {
        char * bytes = reinterpret_cast<char *>(&value);
        io.read(bytes, sizeof(value));
        value = le64toh(value);
    }

    inline void Element::putCString(iostream &io, const string &value) const {
        io.write(value.c_str(), value.length());
    }

    inline void Element::getCString(iostream &io, string &value) {
        //io.get(value, '\0');
    }

    inline void Element::putString(iostream &io, const string &value) const {
        putInt32(io, value.length() + sizeof(int32_t));
        putCString(io, value);
    }

    inline void Element::getString(iostream &io, string &value) {
        int32_t length;
        getInt32(io, length);
        getCString(io, value);
    }
} // bson namespace
#endif
