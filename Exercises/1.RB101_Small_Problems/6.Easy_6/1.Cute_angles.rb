=begin **UNSOLVED**

#Problem: Cute angles
  Write a method that takes a floating point number that represents an angle between 0 and 360
  degrees and returns a String that represents that angle in degrees, minutes and seconds. You
  should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes,
  and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60
  seconds.

  Note: your results may differ slightly depending on how you round values, but should be within
  a second or two of the results shown.

  You should use two digit numbers with leading zeros when formatting the minutes and seconds,
  e.g., 321°03'07".

  You may use this constant to represent the degree symbol:
  DEGREE = "\xC2\xB0"

  Explicit requirements
    Input:
      -float
    Output:
      -string
    Rules:
      -format string using degree symbol, min symbol, seconds symbols
      -apply conversion factors
        - 1 degree = 60 minutes
        - 1 minute = 60 seconds

  Implicit requirements:
    -rounding floats with decimals longer that 2 places

  Questions:
    -Do I have to use a specific rounding method?

#Examples / Test Cases:

  dms(30) == %(30°00'00")
  dms(76.73) == %(76°43'48")
  dms(254.6) == %(254°36'00")
  dms(93.034773) == %(93°02'05")
  dms(0) == %(0°00'00")
  dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


#Data Structures
  Possible methods:
    -round
    -format
    -floor
  Possible structures:
    -

#Algorithm
  -init constants
  -define method dms with parameter (angle)
  -round input to 2 decimal places
    - .round(2)
  -create vars for degree, mins, seconds
    -convert degree as integer without decimals
      - .floor
    -convert mins from 10th place decimal
      - num * 10 -> num.floor -> num%10 -> num * conversion factor minutes
    -convert seconds from hundreath place decimal
      - num * 100 -> num.floor -> num%10 -> num * conversion factor seconds
  -format a new string with (degree, hours, mins) with preceeding zeroes as needed

   => expected return: formatted string
   => expected output: nil

=end

#Code Implementation

DEGREE = "\xC2\xB0"
DEGREE_TO_MINUTES = 60
MINS_TO_SECONDS = 60

def dms(angle)
  angle.round(2)
  degree = angle.floor
  minutes = (((angle*10).floor)%10)*DEGREE_TO_MINUTES
  seconds = (((angle*100).floor)%10)*MINS_TO_SECONDS

  format('%03d %02d\'%02d\"', degree, minutes, seconds)

end


p "initial angle is #{angle}"
p "degree place is #{degree}"
p "minutes place is #{minutes}"
p "seconds place is #{seconds}"
p "/n/n"
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")