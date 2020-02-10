#include <bitset>
#include <iostream>
// #include <stdint.h>
// #include <inttypes.h>

int main(void) {

    size_t shift;
    for (shift = 0; shift < 64; ++shift) {
        uint64_t a = (1ULL << shift), b = (1 << shift);
        std::cout << "shift =" << shift << ", a =" << std::bitset<64>(a)
                  << ", b =" << std::bitset<64>(b) << std::endl;
    }

    return 0;
}

/* my output (trimmed)
shift =  0, a = 0000000000000001, b = 0000000000000001
shift =  1, a = 0000000000000002, b = 0000000000000002
...
shift = 30, a = 0000000040000000, b = 0000000040000000
shift = 31, a = 0000000080000000, b = 0000000080000000
shift = 32, a = 0000000100000000, b = 0000000000000001
shift = 33, a = 0000000200000000, b = 0000000000000002
...
shift = 62, a = 4000000000000000, b = 0000000040000000
shift = 63, a = 8000000000000000, b = 0000000080000000
*/
