# Reversed Array (Part 1)
#
# Problem
# Write a method that takes an array as argument and
# mutates that array in place so that the elements
# of the array are in reverse order.
#
# Don't use Array#reverse or Array#reverse!
#
# Examples
# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id
#
# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]
#
# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]
#
# list = []
# reverse!(list) == []
# list == []
#
# Data Structures / Type Signature
# array -> array
#
# Algorithm
# 1) make a copy of the array with Array#dup
# 2) iterate forward through original list, iterate backwards 
#    through the duplicate list, reassigning the value for each
#    index of the original list
#    
#    eg list[0] = duplicate_list[-1]
# 3) return mutated original list
#
#
# Code
require 'test/unit'

class ReversedArray < Test::Unit::TestCase
  def test_reverse!
    assert_equal(reverse!([1,2,3,4]), [4, 3, 2, 1])
    assert_equal(reverse!(['a', 'b', 'c', 'd']), ['d', 'c', 'b', 'a'])
    assert_equal(reverse!(["abc"]), ["abc"])
    assert_equal(reverse!([]), [])
  end
end

def reverse!(arr)
  duplicate = arr.dup

  counter = 0
  reverse_counter = -1
  until counter == arr.length
    arr[counter] = duplicate[reverse_counter]   
    counter += 1
    reverse_counter -= 1
  end
  return arr
end
