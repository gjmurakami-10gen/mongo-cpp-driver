#ifndef BSON_DOCUMENT_H_
#define BSON_DOCUMENT_H_
#include <string>
#include <unordered_map>

namespace bson {

class Document : public Element {
    private:
        unordered_map<std::string, Element> value;
    public:

};

}
#endif
