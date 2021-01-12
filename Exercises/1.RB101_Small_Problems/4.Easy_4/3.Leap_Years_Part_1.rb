=begin

#Problem: Leap Years (Part 1)
  In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
  unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year
  unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as input,
and returns true if the year is a leap year, or false if it is not a leap year.

  Explicit requirements
    Input:
      -integer
    Output:
      -boolean
    Rules:
      - leap year = year that is divisible by 4 or 400
      - except if also divisible by 100
      - year > 0


  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:
  leap_year?(2016) == true
  leap_year?(2015) == false
  leap_year?(2100) == false
  leap_year?(2400) == true
  leap_year?(240000) == true
  leap_year?(240001) == false
  leap_year?(2000) == true
  leap_year?(1900) == false
  leap_year?(1752) == true
  leap_year?(1700) == false
  leap_year?(1) == false
  leap_year?(100) == false
  leap_year?(400) == true


#Data Structures
  Possible methods:
    -
  Possible structures:
    -none

#Algorithm
  -define method leap_year with parameter year
  -calculate year modulo 400, if == 0, true
  -calculate year modulo 100, if == 0, false
  -calculate year modulo 4, if == 0, true

   => expected return: boolean
   => expected output: none

=end

#Code Implementation

def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

### Alt Solution ###

=begin

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

=end
