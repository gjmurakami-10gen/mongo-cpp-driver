#ifndef BSON_STRING_H_
#define BSON_STRING_H_
#include <string>
#include "element.h"

namespace bson {

    class String : public Element {
        private:
            static const char type = 0x02;
            std::string value;
        public:
            String(std::string s) : value(s) { }
            String(std::iostream &io);
            void bsonValue(std::iostream &io) const;
            bool operator==(const String &rhs) const;
    };

    inline String::String(std::iostream &io) {
    
    }

    inline void String::bsonValue(std::iostream &io) const {
        putString(io, value);
    }

    inline bool String::operator==(const String &rhs) const {
        return value == rhs.value;
    }
}

#endif
