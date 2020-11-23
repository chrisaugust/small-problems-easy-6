# Staggered Caps (Part 2)
#
# Problem
# Write a method that takes a string as an argument and returns a string
# with the original values in a staggered capitalization scheme in which
# every other character is capitalized with the remaining characters in
# lower-case. Characters that are not letters should not be changed nor
# do they count in the switching pattern between upper- and lower-case. 
#
# 
# Examples
# staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# staggered_case('ALL CAPS') == 'AlL cApS'
# staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
# 
# 
# Data Structures / Type Signature
#
# string -> array -> string
#
# 
# Algorithm
# 1) split argument string into an array of characters
# 2) add a counter value to each letter character eg 'a' -> ['a', 1]
# 3) iterate through array, checking the counter values and applying
#    upcase if counter.even? and downcase if counter.odd?
#
# 
# Code
require 'test/unit'

class StaggeredCaps < Test::Unit::TestCase
  def test_staggered_case
    assert_equal(staggered_case('I Love Launch School!'), 'I lOvE lAuNcH sChOoL!')
    assert_equal(staggered_case('ALL CAPS'), 'AlL cApS')
    assert_equal(staggered_case('ignore 77 the 444 numbers'), 'IgNoRe 77 ThE 444 nUmBeRs')
  end
end

def staggered_case(str)
  char_array = str.split('')
  
  counter = 0 
  char_array.each do |c|
    if c =~ /[A-Za-z]/
      c.upcase! if counter.even?
      c.downcase! if counter.odd?
      counter += 1
    end
  end
  char_array.join
end
