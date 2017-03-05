#include <iostream>
#include "fruits/apple/apple_manager.h"
#include "fruits/apple/red_apple/red_apple_one.h"

int main() {
    //AppleManager apple_manager;
    RedAppleOne red_apple_one(50);

    std::cout << red_apple_one.get_size() << std::endl;
    return 0;
}