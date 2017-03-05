#include "fruits/apple/red_apple/red_apple_one.h"

int RedAppleOne::get_size() {
    return size;
}

void RedAppleOne::set_size(int size) {
    this->size = size;
}

RedAppleOne::RedAppleOne(int size) {
    this->size = size;
}