# Reversed Array (Part 2) 
#
# Problem
# Write a method that takes an array and returns a new array
# with the elements of the original list in reverse order, without
# modifying the original list.
#
# Dont' use Array#reverse, Array#reverse!, or the method written in 
# part 1 of this exercise.
#
#
# Examples
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true
#
# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true
#
# 
# Data Structures / Type Signature
# array -> array
#
#
# Algorithm
# 1) make a new, empty array (reversed_arr)
# 2) step through items in argument array in reverse,
#    pushing each element into reversed_arr
# 3) return reversed_array
#
# Code
require 'test/unit'

class ReversedArrayPartTwo < Test::Unit::TestCase
  def test_reverse
    assert_equal(reverse([1,2,3,4]), [4,3,2,1])
    assert_equal(reverse(%w(a b e d c)), %w(c d e b a))
  end
  
  def test_reverse_by_ids
    list = [1,3,2]
    new_list = reverse(list)
    assert_not_equal(list.object_id, new_list.object_id)
  end
end

def reverse(arr)
  reversed_arr = []
  
  counter = 0
  reverse_counter = -1
  arr.length.times do
    reversed_arr[counter] =  arr[reverse_counter]
    counter += 1
    reverse_counter -= 1
  end
  reversed_arr
end
