#include <iostream>
#include <vector>

int main() {
    int64_t i = 1;
    int64_t j;
    j = (i << 1);

    std::cout << j << std::endl;

    j = (i << 32);

    std::cout << j << std::endl;

    std::vector<int64_t> k(2, 1);

    j = (k[0] << 32);
    std::cout << j << std::endl;

    return 0;
}
