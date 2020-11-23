# Staggered Caps (Part 1)
#
# Problem
# Write a method that takes a string as an argument and returns a string
# with the original values in a staggered capitalization scheme in which
# every other character is capitalized with the remaining characters in
# lower-case. Characters that are not letters should not be changed but do count
# in the switching pattern between upper- and lower-case. 
#
# 
# Examples
# staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# staggered_case('ALL_CAPS') == 'AlL_CaPs'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
# 
# 
# Data Structures / Type Signature
#
# string -> string
#
# 
# Algorithm
# 1) split the argument string into an array of characters
# 2) iterate over the array
#       if index of character is even and character is a letter
#         change letter to uppercase
#       elsif index of character is odd and character is a letter
#         change letter to lowercase
#       else
#         next
#       end
# 3) join array elements back into a string
# 
# Code
require 'test/unit'

class StaggeredCaps < Test::Unit::TestCase
  def test_staggered_case
    assert_equal(staggered_case('I Love Launch School!'), 'I LoVe lAuNcH ScHoOl!')
    assert_equal(staggered_case('ALL_CAPS'), 'AlL_CaPs')
    assert_equal(staggered_case('ignore 77 the 444 numbers'), 'IgNoRe 77 ThE 444 NuMbErS')
    assert_equal(staggered_case('will this S@$#t work? not sur3'), 'WiLl tHiS S@$#T WoRk? NoT SuR3')
  end
end

def staggered_case(str)
  char_array = str.split('')
  
  staggered_array = []
  char_array.each_with_index do |c, i|
    if i.even? and c.match(/[A-Za-z]/)
      staggered_array << c.upcase
    elsif i.odd? and c.match(/[A-Za-z]/)
      staggered_array << c.downcase
    else
      staggered_array << c
    end
  end 
  staggered_str = staggered_array.join('')
  puts staggered_str
  return staggered_str  
end
