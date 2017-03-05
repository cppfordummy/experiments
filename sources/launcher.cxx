#include <iostream>
#include "fruits/apple/red_apple/red_apple_one.h"
#include "fruits/apple/apple_manager.h"


int main() {
    AppleManager apple_manager{};
    RedAppleOne red_apple_one(50);

    apple_manager.another_method(&red_apple_one);

    std::cout << red_apple_one.get_size() << std::endl;
    return 0;
}