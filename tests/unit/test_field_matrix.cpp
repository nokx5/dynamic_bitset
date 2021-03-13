// #define BOOST_TEST_MODULE unit_field_matrix
// #define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

// try it out :
// #include <boost/test/included/unit_test.hpp>

// BOOST_AUTO_TEST_SUITE( Matrix )

#include "field.hpp"
#include <iostream>

// template class bfl::matrix<bfl::bitset<int8_t>>;
// template class bfl::matrix<bfl::bitset<int16_t>>;

// bfl::bitset<int32_t>

#include <boost/mpl/list.hpp>
typedef boost::mpl::list<bfl::bitset<int8_t>, bfl::bitset<int16_t>, bfl::bitset<int>>
    test_types;
#include <boost/test/output_test_stream.hpp>
using boost::test_tools::output_test_stream;

BOOST_AUTO_TEST_CASE(test00_boost_test_unit) {
    bool mytest = true;
    BOOST_TEST(mytest);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test01_constructor_destructor, T, test_types) {
    bfl::matrix<T> mat1;
    {
        bfl::matrix<T> mat2();
        BOOST_TEST(true);
    }
    BOOST_TEST(true);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test02_constructor, T, test_types) {
    {
        bfl::matrix<T> mat(2, 3);
        std::cout << mat;
        T mbitset(31);
        mbitset.set(1, 1);
        mbitset.set(2, 1);
        mbitset.set(30, 1);

        mat(0, 0) = mbitset;
        std::cout << mat;
        std::cout << "mat.num_bit_row(0)=" << mat.num_bit_row(0);
    }
    BOOST_TEST(true);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test03_copy_constructor, T, test_types) {
    bfl::matrix<T> mat1(2, 3);
    bfl::matrix<T> mat2(mat1);
    if (mat1.num_rows() == 2 && mat1.num_cols() == 3)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test04_assignement, T, test_types) {
    bfl::matrix<T> mat1(2, 3);
    bfl::matrix<T> mat2(4, 5);
    mat1 = mat2;
    if (mat1.num_rows() == 4 && mat1.num_cols() == 5)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test05_move, T, test_types) {
    bfl::matrix<T> mat1(2, 3);
    bfl::matrix<T> mat2(4, 5);
    mat1 = std::move(mat2);
    if (mat1.num_rows() == 4 && mat1.num_cols() == 5)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

bool correctMessage(const std::logic_error& ex) {
    BOOST_CHECK_EQUAL(ex.what(),
                      std::string("|--> index out of bound in matrix<T>::operator()"));
    return true;
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test06_operator_index, T, test_types) {
    bfl::matrix<T> mat(2, 3);
    // BOOST_CHECK_EXCEPTION(mat(4, 4), std::logic_error, correctMessage);
    mat(1, 2);
    // mat(0,0) = 1;
    BOOST_TEST(true);
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test07_print_cout, T, test_types) {
    bfl::matrix<T> mat(2, 2);
    // mat(0,0) = 1; mat(0,1) = 2; mat(1,0) = 3;
    output_test_stream output;
    mat.print(output);
    BOOST_TEST(!output.is_empty(false));
    BOOST_TEST(true);
    // std::cout << mat;
}

BOOST_AUTO_TEST_CASE_TEMPLATE(test08_rows_cols_methods, T, test_types) {
    bfl::matrix<T> mat(4, 5);
    if (mat.num_rows() == 4)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
    if (mat.num_cols() == 5)
        BOOST_TEST(true);
    else
        BOOST_TEST(false);
}

// BOOST_AUTO_TEST_SUITE(test_suite1)

// BOOST_AUTO_TEST_SUITE_END()
