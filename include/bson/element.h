#ifndef BSON_ELEMENT_H_
#define BSON_ELEMENT_H_
#include <iostream>
#include <cstdint>

namespace bson {

    class Element {
        protected:
            void putInt32(std::iostream &io, const int32_t &value) const;
            void getInt32(std::iostream &io, int32_t &value);
            void putInt64(std::iostream &io, const int64_t &value) const;
            void getInt64(std::iostream &io, int64_t &value);
    };

    inline void Element::putInt32(std::iostream &io, const int32_t &value) const {
        io.write(reinterpret_cast<const char *>(&value), sizeof(value));
    }

    inline void Element::getInt32(std::iostream &io, int32_t &value) {
        io.read(reinterpret_cast<char *>(&value), sizeof(value));
    }

    inline void Element::putInt64(std::iostream &io, const int64_t &value) const {
        io.write(reinterpret_cast<const char *>(&value), sizeof(value));
    }

    inline void Element::getInt64(std::iostream &io, int64_t &value) {
        io.read(reinterpret_cast<char *>(&value), sizeof(value));
    }

} // bson namespace
#endif
