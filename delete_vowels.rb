# Delete Vowels
#
# A method that takes an array of string and returns an array of the same
# string values but with vowels (a, e, i, o, u) removed.
#
# Examples
# remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
# 
# Data Signature / Data Structures
# array -> array
#
# Algorithm
# 1) iterate through array of strings
# 2) for each string, substitute '' for vowels
# 3) return de-voweled array of strings
#
# Code
require 'test/unit'
require 'pry'

class DeleteVowels < Test::Unit::TestCase
  def test_remove_vowels
    assert_equal(remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)), %w(bcdfghjklmnpqrstvwxyz))
    assert_equal(remove_vowels(%w(green YELLOW black white)),%w(grn YLLW blck wht))
    assert_equal(remove_vowels(%w(ABC AEIOU XYZ)), ['BC', '', 'XYZ'])
  end
end

def remove_vowels(str_array)
  subs = { 'a' => '',
           'e' => '',
           'i' => '',
           'o' => '',
           'u' => '',
           'A' => '',
           'E' => '',
           'I' => '',
           'O' => '',
           'U' => ''
          }

  str_array.each do |str|
    subs.each do |pattern, sub|
      str.gsub!(pattern, sub)
    end
  end
end
