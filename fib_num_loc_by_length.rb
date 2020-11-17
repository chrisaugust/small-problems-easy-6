# Fibonacci Number Location By Length
#
# Problem
# Write a method that calculates and returns the index of the first
# Fibonacci number that has the number of digits specified by 
# the argument to the method.
#
# Examples
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 478479
#
# Data Structures / Type Signature
# int -> int
#
# Algorithm
# 1) calculate a fibonacci number
# 2) check the number of digits in that fibonacci number
# 3) repeat 1 and 2 until number of digits matches the argument
#
# Code
require 'test/unit'
require 'pry'

class FibonacciNumberLocationByLength < Test::Unit::TestCase
  def test_find_fibonacci_index_by_length
    assert_equal(find_fibonacci_index_by_length(2), 7)
    assert_equal(find_fibonacci_index_by_length(3), 12) 
    assert_equal(find_fibonacci_index_by_length(10), 45)
    assert_equal(find_fibonacci_index_by_length(100), 476)
    assert_equal(find_fibonacci_index_by_length(1000), 4782)
    assert_equal(find_fibonacci_index_by_length(10000), 47847)
  end
end

def find_fibonacci_index_by_length(len)
  fibonacci_numbers = []
  fibonacci_numbers << 0
  fibonacci_numbers << 1
  num_digits = 1

  until num_digits == len
    next_fibonacci_number(fibonacci_numbers)
    if fibonacci_numbers[-1] / (10**num_digits) > 0
      num_digits += 1
    end
  end
  return fibonacci_numbers.index(fibonacci_numbers.last)
end

def next_fibonacci_number(arr)
  arr << (arr[-1] + arr[-2])
  arr[-1]
end
