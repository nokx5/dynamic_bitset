if(NOT Boost_USE_STATIC_LIBS)
  add_definitions(-DBOOST_TEST_DYN_LINK=TRUE)
endif()

set(PROJECT_UNIT_TEST_NAMES field_bitset field_matrix)

foreach(UNIT_TEST ${PROJECT_UNIT_TEST_NAMES})
  add_executable(test_${UNIT_TEST} test_${UNIT_TEST}.cpp)
  target_compile_definitions(test_${UNIT_TEST}
                             PUBLIC BOOST_TEST_MODULE=${UNIT_TEST})
  target_link_libraries(test_${UNIT_TEST}
                        ${Boost_UNIT_TEST_FRAMEWORK_LIBRARIES})
  add_test(NAME unit_test_${UNIT_TEST} COMMAND test_${UNIT_TEST})
endforeach()
