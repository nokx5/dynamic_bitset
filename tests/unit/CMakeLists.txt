# if(NOT HIGHFIVE_UNIT_TESTS) return() endif()

# # NOTE: These unit tests expect linking with boost test framework lib if(NOT
# Boost_USE_STATIC_LIBS) add_definitions(-DBOOST_TEST_DYN_LINK=TRUE) endif()

# foreach(test_name unit_field_bitset unit_field_matrix )
# add_executable(${test_name} ${CODING} "${test_name}.cpp" )
# target_link_libraries(${test_name} ${Boost_UNIT_TEST_FRAMEWORK_LIBRARIES} )
# add_test(NAME ${test_name} COMMAND ${test_name}) endforeach()
