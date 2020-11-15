# Cute Angles
#
# A method that takes a floating point number representing
# an angle between 0 and 360 degrees and returns a String
# which represents that angle in degrees, minutes, and seconds
# using ° for degrees, ' for minutes, and " for seconds.
#
# 1° = 60'
# 1' = 60"
#
# Examples
# 
# dms(30)  ,  "%(30°00'00")
# dms(76.73)  ,  "%(76°43'48")
# dms(254.6)  ,  "%(254°36'00")
# dms(93.034773)  ,  "%(93°02'05")
# dms(0)  ,  "%(0°00'00")
# dms(360)  ,  "%(360°00'00") || dms(360) == %(0°00'00")
#
# 
# Data Types / Data Structures
# 
# Float -> String
#
#
# Algorithm
#
# 1) calculate degrees
#     degrees = input_float
# 2) calculate minutes
# 3) calculate seconds
# 4) convert degrees, minutes, and seconds to strings 
#    and use string interpolation to return a 'cute angle'
#    string representation
#
#    return_str = "%(#{degrees.to_s}°#{minutes.to_s}'#{seconds.to_s}\""
#
# Code
require 'test/unit'
require 'pry'

class CuteAngles < Test::Unit::TestCase
  def test_dms
    assert_equal( dms(30), "%(30°00'00\")")
    assert_equal( dms(76.73), "%(76°43'48\")")
    assert_equal( dms(254.6), "%(254°35'59\")")
    assert_equal( dms(93.034773), "%(93°02'05\")")
    assert_equal( dms(0), "%(0°00'00\")")
    #assert_equal( dms(360), "%(360°00'00\")" || "%(0°00'00\")")
  end
end

def dms(input_fl)
  degrees = input_fl.floor 
  if degrees > 0
    minsec = (input_fl % degrees) * 60
    minutes = minsec.floor
  else
    minutes = 0
  end

  if minutes > 0
    seconds = ((minsec % minutes) * 60).floor 
  else 
    seconds = 0
  end


  minutes = minutes.to_s.rjust(2, "0")

  seconds = seconds.to_s.rjust(2, "0")

  return_str = "%(#{degrees}°#{minutes}'#{seconds}\")"
end
