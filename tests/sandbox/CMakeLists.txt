foreach(sandname demo example01 example02 test01 test02)
  add_executable(${sandname} "${sandname}.cpp")
  target_link_libraries(${sandname} dynamic_bitset)
endforeach()
