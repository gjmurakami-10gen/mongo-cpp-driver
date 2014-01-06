#ifndef BSON_ELEMENT_H_
#define BSON_ELEMENT_H_
#include <sstream>

namespace bson {

class Element {
    private:
        static const char type = 0x00;
    public:
        inline void bsonType(std::iostream &io) const { io << type; }
};

} // bson namespace
#endif
