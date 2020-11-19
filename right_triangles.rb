# Right Triangles
#
# Problem
# Write a method that takes a positive integer n as an argument
# and displays a right triangle whose sides each have n stars.
#
# Examples
# triangle(5)
#
#     *
#    **
#   ***
#  ****
# *****
#
# triangle(9)
#
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
#
# Data Structures / Type Signature
# int -> nil  #results displayed in stdout
#
# Algorithm
#
# Code
require 'test/unit'

class RightTriangles < Test::Unit::TestCase
  def test_triangle
    assert_equal(triangle(5),
"""
    *
   **
  ***
 ****
*****
""")
      
    assert_equal(triangle(9),
"""
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
""")
  end
end

def triangle(n)
  counter = 1
  str = "\n"
  n.times do
    str <<  " "*(n-counter) + "*"*counter + "\n"
    counter += 1
  end
  puts str
  str
end
