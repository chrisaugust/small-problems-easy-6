# Combining Arrays 
#
# Problem
# Write a method that takes two arrays as arguments
# and returns an array containing all the values of the
# two argument arrays with no duplicates.
#
# Examples
# merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
#
#
# Data Structures / Type Signature
# array, array -> array
#
# Algorithm
# 1) require 'set'
# 2) combine two argument arrays into one (containing duplicates)
# 3) call Set#to_set on the array from 2
# 4) call Set#to_a to convert set from step 3 into an array
# 5) return array from step 4
#
# Code
require 'test/unit'

class CombiningArrays < Test::Unit::TestCase
  def test_merge
    assert_equal(merge([1,3,5], [3,6,9]), [1,3,5,6,9])
  end
end

require 'set'

def merge(a1, a2)
  a3 = a1 + a2
  s = a3.to_set
  a3_no_dups = s.to_a
end
