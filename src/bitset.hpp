#ifndef FIELD_BITSET_HPP
#define FIELD_BITSET_HPP

#include <algorithm>
#include <climits>  // for CHAR_BIT
#include <ostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace bfl {

template <typename Block, typename Allocator = std::allocator<Block>>
class bitset {

    typedef std::vector<Block, Allocator> buffer_type;

  public:
    typedef Block block_type;
    typedef Allocator allocator_type;
    typedef std::size_t size_type;
    typedef typename buffer_type::size_type block_width_type;

    const static block_width_type bits_per_block = (std::numeric_limits<Block>::digits);
    // const static size_type npos = static_cast<size_type>(-1);

  public:
    bitset()
        : m_num_bits(0) {}

    explicit bitset(const Allocator& alloc);

    explicit bitset(size_type num_bits,
                    unsigned long value = 0,
                    const Allocator& alloc = Allocator());

    // copy constructor
    bitset(const bitset& b);

    ~bitset();

    bitset& operator=(const bitset& b);

    bitset(bitset&& src);
    bitset& operator=(bitset&& src);

    // allocator_type get_allocator() const;

    // ---------------------------------------------------------

    std::ostream& print(std::ostream& out) const {
        // reverse order :
        // block_type my_number;
        // for (typename std::vector<block_type>::const_reverse_iterator rit =
        // 	   m_bits.rbegin();
        //      rit != m_bits.rend(); ++rit) {
        //   my_number = *rit;
        //   // copy-paste from
        //   //
        //   https://rextester.com/discussion/GIEUW75195/C-Program-to-Print-Binary
        //   int nb_bits = bits_per_block;
        //   for (int i = nb_bits - 1; i >= 0; i--) {
        //     bool is_bit_one = (my_number & (1 << i));
        //     if (is_bit_one) {
        //       out << "1";
        //     } else {
        //       out << "0";
        //     }
        //   }
        //   // to here
        // }
        std::size_t counter_visual_allignement = 0;
        block_type my_number;
        for (typename std::vector<block_type>::const_iterator it = m_bits.begin();
             it != m_bits.end(); ++it) {
            my_number = *it;
            int nb_bits = bits_per_block;
            for (int i = 0; i < nb_bits; i++) {
                bool is_bit_one = (my_number & (1 << i));
                if (is_bit_one) {
                    out << "1";
                } else {
                    out << "0";
                }
                // visual allignement
                ++counter_visual_allignement;
                if ((counter_visual_allignement % 8) == 0)
                    out << " ";
                // visual allignement
            }
            // to here
        }

        return out;
    };

    /// Returns the size of the dynamic bitset.
    size_type size() const {
        return m_num_bits;
    }

    /// Returns the number of blocks to store the bits in the dynamic bitset. //
    /// num_integer
    size_type num_blocks() const {
        return m_bits.size();
    }

    block_type& block_ref(const size_type npos) {
        return m_bits[integer_index(npos)];
    }

    size_type integer_index(const size_type npos) const {
        return npos / bits_per_block;
    }
    block_width_type bit_index(size_type npos) const {
        return static_cast<block_width_type>(npos % bits_per_block);
    }

    block_type bit_mask(size_type pos) noexcept {
        return block_type(1) << bit_index(pos);
    }

    // static size_type block_index(size_type pos) noexcept { return pos /
    // bits_per_block; } static block_width_type bit_index(size_type pos) noexcept
    // { return static_cast<block_width_type>(pos % bits_per_block); } static
    // Block bit_mask(size_type pos) noexcept { return Block(1) << bit_index(pos);
    // }

    bitset& set(size_type pos, bool val) {
        if (val)
            m_bits[integer_index(pos)] |= bit_mask(pos);
        else
            m_bits[integer_index(pos)] &= ~bit_mask(pos);

        return *this;
    }

    block_type& operator[](const size_type n) {
        return m_bits[n];
    }

    // bool operator()(const size_type npos) const {
    //   const size_type pos = bit_index(npos);
    //   const size_type block = integer_index(npos);
    //   // load current block
    //   block_type block_value;
    //   copy_n(m_bits.begin() + block, 1, &block_value);
    //   return (size_type(1) << pos) & block_value;
    // }

    // A proxy class to simulate lvalues of bit type.
    //
    class reference {
        friend class bitset<Block, Allocator>;

        // the one and only non-copy ctor
        reference(block_type& b, block_width_type pos)
            : m_block(b)
            , m_mask(                   //(assert(pos < bits_per_block),
                  block_type(1) << pos  // )
              ) {}

        // void operator&(); // left undefined

      public:
        // copy constructor: compiler generated
        operator bool() const {
            return (m_block & m_mask) != 0;
        }
        bool operator~() const {
            return (m_block & m_mask) == 0;
        }

        reference& flip() {
            do_flip();
            return *this;
        }

        reference& operator=(bool x) {
            do_assign(x);
            return *this;
        }  // for b[i] = x
        reference& operator=(const reference& rhs) {
            do_assign(rhs);
            return *this;
        }  // for b[i] = b[j]

        reference& operator|=(bool x) {
            if (x)
                do_set();
            return *this;
        }
        reference& operator&=(bool x) {
            if (!x)
                do_reset();
            return *this;
        }
        reference& operator^=(bool x) {
            if (x)
                do_flip();
            return *this;
        }
        reference& operator-=(bool x) {
            if (x)
                do_reset();
            return *this;
        }

      private:
        block_type& m_block;
        const block_type m_mask;

        void do_set() {
            m_block |= m_mask;
        }
        void do_reset() {
            m_block &= ~m_mask;
        }
        void do_flip() {
            m_block ^= m_mask;
        }
        void do_assign(bool x) {
            x ? do_set() : do_reset();
        }
    };

    // bitset::reference operator[](const size_type pos) {
    //   return reference(m_bits[block_ref(pos)], bit_index(pos));
    // }
    bitset::reference operator()(const size_type npos) {
        return reference(m_bits[integer_index(npos)], bit_index(npos));
    }

    // bitset operations
    bitset& operator&=(const bitset& b);
    bitset& operator|=(const bitset& b);
    bitset& operator^=(const bitset& b);
    bitset& operator-=(const bitset& b);

    // //
    // std::vector<block_type>::iterator begin() {
    //   return m_bits.begin();
    // }

    // std::vector<block_type>::const_iterator begin() const {
    //   return m_bits.begin();
    // }

    // //
    // std::vector<block_type>::iterator end() {
    //   return m_bits.end();
    // }

    // std::vector<block_type>::const_iterator end() const {
    //   return m_bits.end();
    // }

  private:
    const static block_width_type ulong_width =
        std::numeric_limits<unsigned long>::digits;
    static size_type calc_num_blocks(size_type num_bits);
    buffer_type m_bits;
    size_type m_num_bits;
};

template <typename Block, typename Allocator>
const typename bitset<Block, Allocator>::block_width_type
    bitset<Block, Allocator>::bits_per_block;

// template <typename Block, typename Allocator>
// const typename bitset<Block, Allocator>::size_type
// bitset<Block, Allocator>::npos;

template <typename Block, typename Allocator>
const typename bitset<Block, Allocator>::block_width_type
    bitset<Block, Allocator>::ulong_width;

// bitset operations
template <typename Block, typename Allocator>
bitset<Block, Allocator> operator&(const bitset<Block, Allocator>& b1,
                                   const bitset<Block, Allocator>& b2);

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator|(const bitset<Block, Allocator>& b1,
                                   const bitset<Block, Allocator>& b2);

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator^(const bitset<Block, Allocator>& b1,
                                   const bitset<Block, Allocator>& b2);

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator-(const bitset<Block, Allocator>& b1,
                                   const bitset<Block, Allocator>& b2);

//=============================================================================
// bitset implementation

//-----------------------------------------------------------------------------
// constructors, etc.

template <typename Block, typename Allocator>
bitset<Block, Allocator>::bitset(const Allocator& alloc)
    : m_bits(alloc)
    , m_num_bits(0) {}

template <typename Block, typename Allocator>
bitset<Block, Allocator>::bitset(size_type num_bits,
                                 unsigned long value,
                                 const Allocator& alloc)
    : m_bits(calc_num_blocks(num_bits), value, alloc)
    , m_num_bits(num_bits) {}

// copy constructor
template <typename Block, typename Allocator>
inline bitset<Block, Allocator>::bitset(const bitset& b)
    : m_bits(b.m_bits)
    , m_num_bits(b.m_num_bits) {}

template <typename Block, typename Allocator>
inline bitset<Block, Allocator>::~bitset() {}

template <typename Block, typename Allocator>
bitset<Block, Allocator>&
bitset<Block, Allocator>::operator=(const bitset<Block, Allocator>& b) {
    m_bits = b.m_bits;
    m_num_bits = b.m_num_bits;
    return *this;
}

template <typename Block, typename Allocator>
inline bitset<Block, Allocator>::bitset(bitset<Block, Allocator>&& b)
    : m_bits(std::move(b.m_bits))
    , m_num_bits(std::move(b.m_num_bits)) {
    b.m_num_bits = 0;
}

template <typename Block, typename Allocator>
inline bitset<Block, Allocator>&
bitset<Block, Allocator>::operator=(bitset<Block, Allocator>&& b) {
    if (&b == this) {
        return *this;
    }

    m_bits = std::move(b.m_bits);
    m_num_bits = std::move(b.m_num_bits);
    b.m_num_bits = 0;
    return *this;
}

// template <typename Block, typename Allocator>
// inline typename bitset<Block, Allocator>::allocator_type
// bitset<Block, Allocator>::get_allocator() const
// {
//     return m_bits.get_allocator();
// }

//-----------------------------------------------------------------------------
// bitset operations
template <typename Block, typename Allocator>
bitset<Block, Allocator>& bitset<Block, Allocator>::operator&=(const bitset& rhs) {
    // assert(size() == rhs.size());
    for (size_type i = 0; i < num_blocks(); ++i)
        m_bits[i] &= rhs.m_bits[i];
    return *this;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator>& bitset<Block, Allocator>::operator|=(const bitset& rhs) {
    // assert(size() == rhs.size());
    for (size_type i = 0; i < num_blocks(); ++i)
        m_bits[i] |= rhs.m_bits[i];
    // m_zero_unused_bits();
    return *this;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator>& bitset<Block, Allocator>::operator^=(const bitset& rhs) {
    // assert(size() == rhs.size());
    for (size_type i = 0; i < this->num_blocks(); ++i)
        m_bits[i] ^= rhs.m_bits[i];
    // m_zero_unused_bits();
    return *this;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator>& bitset<Block, Allocator>::operator-=(const bitset& rhs) {
    // assert(size() == rhs.size());
    for (size_type i = 0; i < num_blocks(); ++i)
        m_bits[i] &= ~rhs.m_bits[i];
    // m_zero_unused_bits();
    return *this;
}

// template <typename Block, typename Allocator>
// bitset<Block, Allocator>&
// bitset<Block, Allocator>::set(size_type pos, bool val)
// {
//     assert(pos < m_num_bits);

//     if (val)
//         m_bits[block_index(pos)] |= bit_mask(pos);
//     else
//         reset(pos);

//     return *this;
// }

//-----------------------------------------------------------------------------
// bitset operations

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator&(const bitset<Block, Allocator>& x,
                                   const bitset<Block, Allocator>& y) {
    bitset<Block, Allocator> b(x);
    return b &= y;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator|(const bitset<Block, Allocator>& x,
                                   const bitset<Block, Allocator>& y) {
    bitset<Block, Allocator> b(x);
    return b |= y;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator^(const bitset<Block, Allocator>& x,
                                   const bitset<Block, Allocator>& y) {
    bitset<Block, Allocator> b(x);
    return b ^= y;
}

template <typename Block, typename Allocator>
bitset<Block, Allocator> operator-(const bitset<Block, Allocator>& x,
                                   const bitset<Block, Allocator>& y) {
    bitset<Block, Allocator> b(x);
    return b -= y;
}

//-----------------------------------------------------------------------------
// private (on conforming compilers) member functions

template <typename Block, typename Allocator>
inline typename bitset<Block, Allocator>::size_type
bitset<Block, Allocator>::calc_num_blocks(size_type num_bits) {
    return num_bits / bits_per_block +
           static_cast<size_type>(num_bits % bits_per_block != 0);
}

template <typename T>
std::ostream& operator<<(std::ostream& out, const bitset<T>& rhs) {
    return rhs.print(out);
}

} /* end namespace bfl */

// template class bfl::bitset<uint32_t>;
// std::size_t bfl::bitset<uint32_t>::clz() const {
//   // size_type count_ones() const
//   //   {
//   //     // wrong for int8_t
//   //     size_type counter = 0;
//   //     for (typename std::vector<block_type>::const_iterator it =
//   m_bits.begin(); it < m_bits.end(); ++it)
//   //       counter += __builtin_popcount(*it); // <--- builtin GCC for
//   int32_t
//   //     return counter;
//   //   }
// }

#endif /* FIELD_BITSET_HPP */
