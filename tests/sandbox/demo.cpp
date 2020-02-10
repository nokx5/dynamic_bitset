#include "field.hpp"
#include <iostream>
#include <vector>

int main() {
    bfl::matrix<bfl::bitset<int32_t>> mat1(2, 2);
    bfl::bitset<int32_t> mbitset1_0(31);
    mbitset1_0.set(1, 1);
    mbitset1_0.set(2, 1);
    mbitset1_0.set(30, 1);
    mat1(0, 0) = mbitset1_0;
    bfl::bitset<int32_t> mbitset1_1(28);
    mbitset1_1.set(0, 1);
    mbitset1_1.set(2, 1);
    mbitset1_1.set(15, 1);
    mat1(0, 1) = mbitset1_1;
    bfl::bitset<int32_t> mbitset1_2(9);
    mbitset1_2.set(0, 1);
    mbitset1_2.set(2, 1);
    mbitset1_2.set(5, 1);
    mat1(1, 0) = mbitset1_2;
    bfl::bitset<int32_t> mbitset1_3(7);
    mbitset1_3.set(1, 1);
    mbitset1_3.set(2, 1);
    mbitset1_3.set(6, 1);
    mat1(1, 1) = mbitset1_3;

    bfl::matrix<bfl::bitset<int32_t>> mat2(2, 2);
    bfl::bitset<int32_t> mbitset2_0(31);
    mbitset2_0.set(6, 1);
    mbitset2_0.set(2, 1);
    mbitset2_0.set(31, 1);
    mat2(0, 0) = mbitset2_0;
    bfl::bitset<int32_t> mbitset2_1(28);
    mbitset2_1.set(7, 1);
    mbitset2_1.set(4, 1);
    mbitset2_1.set(15, 1);
    mat2(0, 1) = mbitset2_1;
    bfl::bitset<int32_t> mbitset2_2(9);
    mbitset2_2.set(0, 1);
    mbitset2_2.set(3, 1);
    mbitset2_2.set(4, 1);
    mat2(1, 0) = mbitset2_2;
    bfl::bitset<int32_t> mbitset2_3(7);
    mbitset2_3.set(1, 1);
    mbitset2_3.set(2, 1);
    mbitset2_3.set(6, 1);
    mat2(1, 1) = mbitset2_3;
    // bfl::bitset<int32_t> mbitset2_3(100);
    // mbitset2_3.set(1, 1);  mbitset2_3.set(2, 1);  mbitset2_3.set(6, 1);
    // mat2(1,1) = mbitset2_3;

    std::cout << "MAT1 ==============================\n" << mat1;
    std::cout << "MAT2 ==============================\n" << mat2;

    std::cout << "MAT1 = AND = MAT2 =================\n" << (mat1 & mat2);

    std::cout << "MAT1 = OR  = MAT2 =================\n" << (mat1 | mat2);
    std::cout << "MAT1 = Un- = MAT2 =================\n" << (mat1 - mat2);
    std::cout << "MAT1 = XOR = MAT2 =================\n" << (mat1 ^ mat2);

    return 0;
}
