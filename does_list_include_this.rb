# Does My List Include This? 
#
# Problem
# Write a method named include? which takes an array and a search
# value as arguments, returning true if the search value is in 
# the array, false if not. Don't use Array#include? in the solution.
#
# Examples
# include?([1,2,3,4,5], 3) == true
# include?([1,2,3,4,5], 6) == false
# include?([], 3) == false
# include?([nil], nil) == true
# include?([], nil) == false
#
# Data Structures / Type Signature
# array -> boolean
#
# Algorithm
# 1) iterate through array with Array#each
# 2) check each value against the search value
# 3) if value == search value, return true
#    else return false
#
# Code
require 'test/unit'

class DoesListIncludeThis < Test::Unit::TestCase
  def test_include?
    assert_equal(include?([1,2,3,4,5], 3), true)
    assert_equal(include?([1,2,3,4,5], 6), false)
    assert_equal(include?([], 3), false)
    assert_equal(include?([nil], nil), true)
    assert_equal(include?([], nil), false)
  end
end

def include?(array, search_val)
  return_val = false
  array.each do |elem|
    return_val = true if elem == search_val
  end
  return_val
end
