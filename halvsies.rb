# Halvsies 
#
# Problem
# Write a method that takes an array and returns
# an array with two nested arrays containing the 
# first and second halves of the argument array respectively.
# If the argument array contains an odd number of elements,
# put the middle element in the first half array.
#
# Examples
# halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# halvsies([5]) == [[5], []]
# halvsies([]) == [[], []]
#
# Data Structures / Type Signature
#
# Algorithm
# 1) determine length of argument array with Array#length
# 2) 1st half: conditional branching for even and odd length
#    use array slicing eg arr[start_index, length]
#    if even:
#      arg_arr[0, length/2] 
#    if odd:
#      arg_arr[0, (length/2) + 1] 
# 3) 2nd half: conditional branching again 
#    if even:
#      arg_arr[length/2, length/2]
#    if odd:
#      arg_arr[(length/2) + 1, length/2]
# 4) combine 1st half and 2nd half arrays into single array to return
#    
# Code
require 'test/unit'

class Halvsies < Test::Unit::TestCase
  def test_halvsies
    assert_equal(halvsies([1, 2, 3, 4]), [[1, 2], [3, 4]])
    assert_equal(halvsies([1, 5, 2, 4, 3]), [[1, 5, 2], [4, 3]])
    assert_equal(halvsies([5]), [[5], []])
    assert_equal(halvsies([]), [[], []])
  end
end

def halvsies(arr)
  length = arr.length
  
  if length.even?
    first_half = arr[0, length/2]
    second_half = arr[length/2, length/2]
  else
    first_half = arr[0, (length/2) + 1]
    second_half = arr[(length/2) + 1, length/2]
  end

  
  halved = [first_half, second_half] 
end
