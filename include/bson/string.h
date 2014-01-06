#ifndef BSON_STRING_H_
#define BSON_STRING_H_
#include <string>
#include "element.h"

namespace bson {

class String : public Element {
    public:
        static const char type = 0x02;
};

}

#endif
