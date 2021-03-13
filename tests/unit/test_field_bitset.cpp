#include <boost/test/unit_test.hpp>

#include "bitset.hpp"
#include <cmath>
#include <iostream>

#include <boost/mpl/list.hpp>
typedef boost::mpl::list<int8_t, uint16_t, int32_t>
    test_types;  // fail for, long long,  uint64_t, etc.
#include <boost/test/output_test_stream.hpp>
using boost::test_tools::output_test_stream;

BOOST_AUTO_TEST_CASE(test00_boost_test_unit) {
    bool mytest = true;
    BOOST_TEST(mytest);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test01_constructor_destructor, T, test_types) {
    bfl::bitset<T> bit1(17, 0);
    {
        bfl::bitset<T> bit2(4);
        BOOST_TEST(true);
    }
    BOOST_TEST(true);
}

// BOOST_AUTO_TEST_CASE_TEMPLATE(test02_constructor, T, test_types ) {
//   {
//     {
//       bfl::bitset<T> bits({1,0,0,0,0,0,0}); // 3 is one
//       std::cout << bits << std::endl;
//     }{
//       bfl::bitset<T> bits({0,1,0,0,0,0,0}); // 3 is one
//       std::cout << bits << std::endl;
//     }
//   }
//   BOOST_TEST(true);
// }

BOOST_AUTO_TEST_CASE_TEMPLATE(test03_copy_constructor, T, test_types) {
    bfl::bitset<T> bits1(2);
    bfl::bitset<T> bits2(bits1);
    if (bits2.size() == 2)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test04_assignement, T, test_types) {
    bfl::bitset<T> bits1(2);
    bfl::bitset<T> bits2(4);
    bits1 = bits2;
    if (bits1.size() == 4)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test05_move, T, test_types) {
    bfl::bitset<T> bits1(2);
    bfl::bitset<T> bits2(4);
    bits1 = std::move(bits2);
    if (bits1.size() == 4)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test05_size_num_blocks, T, test_types) {
    bfl::bitset<T> bits1(33);

    if (bits1.size() == 33)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);

    if (bits1.num_blocks() ==
        ceil(static_cast<double>(33) / static_cast<double>(sizeof(T) * 8.)))
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

// BOOST_AUTO_TEST_CASE_TEMPLATE(test06_num_blocks, T, test_types) {
//   std::size_t nb_bits = 41;
//   std::size_t number_of_block = static_cast<std::size_t>(
//       ceil(static_cast<double>(nb_bits) / static_cast<double>(sizeof(T)
//       * 8.)));
//   // std::cout << "8*sizeof(T)=" << 8 * sizeof(T) << std::endl;
//   // std::cout << "static_cast<size_type>( ceil(static_cast<double>(" <<
//   nb_bits
//   //           << ") / static_cast<double>(sizeof(T)*8.))=" <<
//   number_of_block
//   //           << std::endl;

//   bfl::bitset<T> mybits(nb_bits);
//   if (mybits.num_blocks() == number_of_block)
//     BOOST_TEST(true);
//   else
//     BOOST_TEST(false);
// }

BOOST_AUTO_TEST_CASE_TEMPLATE(test07_simple_print_cout, T, test_types) {
    std::size_t nb_bits = 41;
    bfl::bitset<T> mbitset(nb_bits);
    std::cout << "41 bits : " << mbitset << std::endl;

    output_test_stream output;
    mbitset.print(output);
    BOOST_TEST(!output.is_empty(false));
    BOOST_TEST(true);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test08_set_simple_bit, T, test_types) {
    bfl::bitset<T> mbitset(65);
    mbitset.set(1, 1);
    mbitset.set(2, 1);
    mbitset.set(30, 1);
    mbitset.set(38, 1);
    mbitset.set(64, 1);
    std::cout << "65 bits : " << mbitset << std::endl;
    if (sizeof(T) < 8)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test08_set_hard_bit, T, test_types) {
    bfl::bitset<T> mbitset(67);
    mbitset.set(32, 1);
    mbitset.set(63, 1);
    std::cout << "67 bits : " << mbitset << std::endl;
    // std::cout << "76543210 76543210 76543210 76543210 76543210 76543210"
    //           << std::endl;
    // std::cout << mbitset << std::endl << std::endl << std::endl;
    // if ( bits.max_size()==m_bits.max_size()* bits_per_block )
    //   BOOST_TEST(true);
    // else
    // BOOST_TEST(false);
    if (sizeof(T) < 8)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test09_operators_accessor, T, test_types) {
    bfl::bitset<T> mbitset(67);
    mbitset[0] = 8;
    mbitset(64) = 1;
    mbitset(62) = 1;
    std::cout << "67 bits : " << mbitset << std::endl;
    // std::cout << "76543210 76543210 76543210 76543210 76543210 76543210"
    //           << std::endl;
    // std::cout << mbitset << std::endl << std::endl << std::endl;
    // if ( bits.max_size()==m_bits.max_size()* bits_per_block )
    //   BOOST_TEST(true);
    // else
    // BOOST_TEST(false);
    if (sizeof(T) < 8)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test09_operators_masks, T, test_types) {
    bfl::bitset<T> mbitset1(67);
    mbitset1.set(32, 1);
    mbitset1.set(63, 1);
    mbitset1.set(64, 1);

    bfl::bitset<T> mbitset2(67);
    mbitset2[0] = 8;
    mbitset2(64) = 1;
    mbitset2(62) = 1;
    std::cout << "1:" << mbitset1 << std::endl;
    std::cout << "2:" << mbitset2 << std::endl;
    std::cout << "&:" << (mbitset1 & mbitset2) << std::endl;
    std::cout << "|:" << (mbitset1 | mbitset2) << std::endl;
    std::cout << "^:" << (mbitset1 ^ mbitset2) << std::endl;
    std::cout << "-:" << (mbitset1 - mbitset2) << std::endl;

    // std::cout << "76543210 76543210 76543210 76543210 76543210 76543210"
    //           << std::endl;
    // std::cout << mbitset << std::endl << std::endl << std::endl;
    // if ( bits.max_size()==m_bits.max_size()* bits_per_block )
    //   BOOST_TEST(true);
    // else
    // BOOST_TEST(false);
    if (sizeof(T) < 8)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

// BOOST_AUTO_TEST_CASE_TEMPLATE(test08_counts_one, T, test_types) {
//   bfl::bitset<T> mbitset(67);
//   mbitset.set(32, 1);
//   mbitset.set(36, 1);
//   mbitset.set(3, 1);
//   mbitset.set(63, 1);
//   // std::cout << mbitset << std::endl << "n=" << mbitset.count_ones() <<
//   std::endl;
//   // std::cout << "76543210 76543210 76543210 76543210 76543210 76543210"
//   //           << std::endl;
//   // std::cout << mbitset << std::endl << std::endl << std::endl;
//   // if ( bits.max_size()==m_bits.max_size()* bits_per_block )
//   //   BOOST_TEST(true);
//   // else
//   // BOOST_TEST(false);
//   if (sizeof(T)<4)
//     BOOST_TEST(false);
//   else
//     BOOST_TEST(true);
// }

// BOOST_AUTO_TEST_CASE_TEMPLATE(test09_mask, T, test_types) {
//   bfl::bitset<T> bitset1(67);
//   bfl::bitset<T> bitset2 = bitset1.bit_mask(33);
//   // std::cout << bitset2 << std::endl << std::endl << std::endl;
//   // if ( bits.max_size()==m_bits.max_size()* bits_per_block )
//   //   BOOST_TEST(true);
//   // else
//   BOOST_TEST(true);
// }

// BOOST_AUTO_TEST_CASE_TEMPLATE(test10_operator_integer_and_bool, T,
// test_types) {
//   bfl::bitset<T> bitset1(67);
//   bfl::bitset<T> bitset2 = bitset1.bit_mask(33);
//   // std::cout << bitset2[1] << std::endl;
//   bitset2[0] = 4;
//   if ((bitset2(0) == 0) && (bitset2(1) == 0) && (bitset2(2) == 1) &&
//       (bitset2(3) == 0)) {
//     BOOST_TEST(true);
//   } else {
//     BOOST_TEST(false);
//   }
// }

// BOOST_AUTO_TEST_SUITE(test_suite2)

// BOOST_AUTO_TEST_CASE_TEMPLATE(nested00_reference_constructor, T, test_types)
// {
//   bfl::bitset<T> bitset1(67);
//   typename bfl::bitset<T>::reference bitsetwithmask(bitset1, 5);
// }

// BOOST_AUTO_TEST_SUITE_END()
