#ifndef RED_APPLE_ONE_H
#define RED_APPLE_ONE_H

#include "fruits/apple/apple_manager.h"

class RedAppleOne {
    friend void AppleManager::another_method(RedAppleOne*);

public:
    RedAppleOne(int);
    int get_size();
    void set_size(int);

private:
    int size;
};

#endif
