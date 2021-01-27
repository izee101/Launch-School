=begin

#Problem: After Midnight (Part 1)
  The time of day can be represented as the number of minutes before or after midnight.
  If the number of minutes is positive, the time is after midnight. If the number of
  minutes is negative, the time is before midnight.

  Write a method that takes a time using this minute-based format and returns the time
  of day in 24 hour format (hh:mm). Your method should work with any integer input.

  You may not use ruby's Date and Time classes.


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
  time_of_day(0) == "00:00"
  time_of_day(-3) == "23:57"
  time_of_day(35) == "00:35"
  time_of_day(-1437) == "00:03"
  time_of_day(3000) == "02:00"
  time_of_day(800) == "13:20"
  time_of_day(-4231) == "01:29"


#Data Structures
  Possible methods:
    -divmod
    -% operator
  Possible structures:
    -array

#Algorithm
    -define method time_of_day with parameter (minutes)
    -call divmod on minutes to obtain remainder and modulus, returns an array
    -call %24 on first element to reduce hours to a single day, returns modified array
    -format string with hours and minutes from array using interpolation

   => expected return: nil
   => expected output: string

=end

#Code Implementation

def time_of_day (minutes)
  arr = minutes.divmod(60)
  arr[0] = arr[0] % 24
  hour = arr[0]
  mins = arr[1]
  format('%02d:%02d', hour, mins)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

### LS Solution ###

=begin

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

=end
