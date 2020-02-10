#ifndef FIELD_MATRIX_HPP
#define FIELD_MATRIX_HPP

#include <ostream>
#include <vector>

namespace bfl {

template <typename T>
class matrix {
  public:
    matrix();
    ~matrix();

    matrix(std::size_t row, std::size_t col);

    matrix(const matrix<T>& mat);
    matrix<T>& operator=(const matrix<T>& mat);
    // matrix<T> &operator=(matrix<T> &&mat);

    T& operator()(const std::size_t& i, const std::size_t& j);

    std::ostream& print(std::ostream& out) const;

    // double density() const;

    std::size_t num_rows() const;
    std::size_t num_cols() const;
    std::size_t num_bit_row(std::size_t row);
    std::size_t num_bit_col(std::size_t col);

    // matrix operations
    matrix<T>& operator&=(const matrix<T>& b);
    matrix<T>& operator|=(const matrix<T>& b);
    matrix<T>& operator^=(const matrix<T>& b);
    matrix<T>& operator-=(const matrix<T>& b);

  private:
    // C MAJOR MODE (row-continuous)
    std::size_t row_;
    std::size_t col_;
    std::vector<T> elem_;
};

template <typename T>
std::ostream& operator<<(std::ostream& out, const matrix<T>& mat);

// ---------------------------------------------------------

template <typename T>
matrix<T>::matrix()
    : row_{}
    , col_{}
    , elem_{} {}
template <typename T>
matrix<T>::~matrix() {}
template <typename T>
matrix<T>::matrix(std::size_t row, std::size_t col)
    : row_(row)
    , col_(col)
    , elem_(row * col) {}
template <typename T>
matrix<T>::matrix(const matrix<T>& mat)
    : row_(mat.row_)
    , col_(mat.col_)
    , elem_(mat.elem_) {}

// template <typename T>
// inline matrix<T>::matrix(matrix<T> &&b)
//   : row_(std::move(mat.row_)), col_(std::move(mat.col_)), elem_(std::move(mat.elem_))
//   {}
//   // b.m_num_bits = 0;
// }

template <typename T>
matrix<T>& matrix<T>::operator=(const matrix<T>& mat) {
    row_ = mat.row_;
    col_ = mat.col_;
    elem_ = mat.elem_;
    return *this;
}
// template <typename T> matrix<T> &matrix<T>::operator=(matrix<T> &&mat) {
//   if (this != &mat) {
//     this->row_ = std::move(mat.row_);
//     this->col_ = std::move(mat.col_);
//     this->elem_ = std::move(mat.elem_);
//   }
//   return *this;
// }

template <typename T>
T& matrix<T>::operator()(const std::size_t& i, const std::size_t& j) {
    // if (i >= row_ || j >= col_)
    //   throw std::logic_error("|--> index out of bound in matrix<T>::operator()");
    // index follows C conventions
    return elem_[i * col_ + j];
}

template <typename T>
std::ostream& matrix<T>::print(std::ostream& out) const {
    out << " matrix, i x j = dim :  " << row_ << " x " << col_ << " = " << row_ * col_
        << std::endl
        << std::endl;
    for (std::size_t i = 0; i < row_; i++) {
        for (std::size_t j = 0; j < col_; j++)
            out << /*std::setw(8) << std::fixed <<*/ elem_[i * col_ + j] << " ; ";
        out << std::endl << std::endl;
    }
    return out;
}

template <typename T>
std::ostream& operator<<(std::ostream& out, const matrix<T>& mat) {
    return mat.print(out);
}

template <typename T>
std::size_t matrix<T>::num_rows() const {
    return row_;
}
template <typename T>
std::size_t matrix<T>::num_cols() const {
    return col_;
}
template <typename T>
std::size_t matrix<T>::num_bit_row(std::size_t row) {
    std::size_t nb_bit_rows = 0;
    for (std::size_t j = 0; j < num_cols(); j++)
        nb_bit_rows += ((*this)(row, j).size());
    return nb_bit_rows;
}
template <typename T>
std::size_t matrix<T>::num_bit_col(std::size_t col) {
    std::size_t nb_bit_cols = 0;
    for (std::size_t i = 0; i < num_rows(); i++)
        nb_bit_cols += (this->operator()(i, col).size());
    return nb_bit_cols;
}

//-----------------------------------------------------------------------------
// matrix operations
template <typename T>
matrix<T>& matrix<T>::operator&=(const matrix<T>& rhs) {
    if (row_ != rhs.row_ || col_ != rhs.col_)
        throw std::logic_error("|-->  error in matrix<T>::operator&=, matrix have "
                               "different dimensions");
    for (std::size_t i = 0; i < row_ * col_; ++i)
        elem_[i] &= rhs.elem_[i];
    return *this;
}

template <typename T>
matrix<T>& matrix<T>::operator|=(const matrix<T>& rhs) {
    if (row_ != rhs.row_ || col_ != rhs.col_)
        throw std::logic_error("|-->  error in matrix<T>::operator&=, matrix have "
                               "different dimensions");
    for (std::size_t i = 0; i < row_ * col_; ++i)
        elem_[i] |= rhs.elem_[i];
    return *this;
}

template <typename T>
matrix<T>& matrix<T>::operator^=(const matrix<T>& rhs) {
    if (row_ != rhs.row_ || col_ != rhs.col_)
        throw std::logic_error("|-->  error in matrix<T>::operator&=, matrix have "
                               "different dimensions");
    for (std::size_t i = 0; i < row_ * col_; ++i)
        elem_[i] ^= rhs.elem_[i];
    return *this;
}

template <typename T>
matrix<T>& matrix<T>::operator-=(const matrix<T>& rhs) {
    if (row_ != rhs.row_ || col_ != rhs.col_)
        throw std::logic_error("|-->  error in matrix<T>::operator&=, matrix have "
                               "different dimensions");
    for (std::size_t i = 0; i < row_ * col_; ++i)
        elem_[i] -= rhs.elem_[i];
    return *this;
}

//-----------------------------------------------------------------------------
// matrix operations

template <typename T>
matrix<T> operator&(const matrix<T>& x, const matrix<T>& y) {
    matrix<T> b(x);
    return b &= y;
}

template <typename T>
matrix<T> operator|(const matrix<T>& x, const matrix<T>& y) {
    matrix<T> b(x);
    return b |= y;
}

template <typename T>
matrix<T> operator^(const matrix<T>& x, const matrix<T>& y) {
    matrix<T> b(x);
    return b ^= y;
}

template <typename T>
matrix<T> operator-(const matrix<T>& x, const matrix<T>& y) {
    matrix<T> b(x);
    return b -= y;
}

} /* end namespace bfl */

#endif /* FIELD_MATRIX_HPP */
