# Multiplicative Average 
#
# Problem
# Write a method that takes an array of integers, multiplies the
# numbers together, divides by the number of integers in the array,
# and prints the result rounded to 3 decimal places. Assume a non-
# empty array.
#
#
# Examples
# show_multiplicative_average([3, 5])                # => The result is 7.500
# show_multiplicative_average([6])                   # => The result is 6.000
# show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
# 
#
# Data Structures / Type Signature
# array -> float
#
# Algorithm
# 1) use Array#reduce to find the multiplicative sum of the integers in the array
# 2) divide sum by number of integers
# 3) round the result by using Float#round
# 4) print to standard output
# 5) return rounded float result for testing
#
# Code
require 'test/unit'

# class MultiplicativeAverage < Test::Unit::TestCase
#   def test_show_multiplicative_average
#     assert_equal(show_multiplicative_average([3, 5]), 7.500)
#     assert_equal(show_multiplicative_average([6]), 6.000)
#     assert_equal(show_multiplicative_average([2, 5, 7, 11, 13, 17]), 28361.667)
#   end
# end

def show_multiplicative_average(arr)
  sum = arr.reduce(:*)
  avg = sum.to_f/arr.length.to_f
  rounded_avg = avg.round(3)
  puts "The result is #{rounded_avg}"
  rounded_avg
end

show_multiplicative_average([3,5])
show_multiplicative_average([6])
show_multiplicative_average([2,5,7,11,13,17])

