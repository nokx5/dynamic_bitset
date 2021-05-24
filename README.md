# 2020 Interview - bitwise operation on dynamic bitset

This work was done during an interview for a Software Engineer job.

The goal was to re-implement bitwise operation on a dynamic bitset.

1. instinctively, I located 
```
std::bitset<2> bits; // in /usr/include/c++/7/bitset
```
2. then looked into boost
```
boost::dynamic_bitset<int> bits; // in boost/dynamic_bitset/dynamic_bitset.hpp
```
3. and finally adapted from
```
Boost.Compute \c dynamic_bitset // in boost/compute/container/dynamic_bitset.hpp
```

This is a header only library.

## Hard coded nix-shell
Enter the hard coded nix shell with

```bash
nix-shell -I nixpkgs=https://nixos.org/channels/nixpkgs-unstable --pure

nix-shell --pure --arg clangSupport true
```

## format
One line code formatter for pure cpp projects

```bash
clang-format -i $(find . -path "./build*" -prune  -name "*.c" -o -name "*.cpp" -o -name "*.h" -o -name "*.hpp")
cmake-format -i $(find . -path "./build*" -prune  -name "*.cmake" -o -name "CMakeLists.txt")
```
