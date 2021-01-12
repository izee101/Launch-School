=begin

#Problem: Leap Years (Part 2)
  A continuation of the previous exercise.
  The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. Prior to 1752, the Julian Calendar was used.
  Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.
  Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

  Explicit requirements
    Input:
      -
    Output:
      -
    Rules:
      -

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
  leap_year?(1700) == true
  leap_year?(1) == false
  leap_year?(100) == true
  leap_year?(400) == true


#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

=begin

Further Exploration

Find a web page that talks about leap years or the different calendar systems, and talk about the interesting information you learned.
For instance, how was the change from the Julian calendar to the Gregorian calendar handled in your ancestral lands?
Do they even use these calendar systems? If you live someplace that doesn't use the Gregorian calendar, tell us about your calendar system.
=end