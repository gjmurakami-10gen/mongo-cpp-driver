#ifndef BSON_STRING_H_
#define BSON_STRING_H_
#include <string>

namespace bson {

class String {
    private:
        static const char type = 0x02;
        std::string value;

    public:
        String(string s) : value(s) {}
        inline char * bsonValue() const { return value.c_str(); }
        inline char bsonType() const { return type; }
};

} // bson namespace
#endif
