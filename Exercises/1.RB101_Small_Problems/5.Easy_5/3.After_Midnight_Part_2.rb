=begin

#Problem: After Midnight (Part 2)
  As seen in the previous exercise, the time of day can be represented as the number
  of minutes before or after midnight. If the number of minutes is positive, the time
  is after midnight. If the number of minutes is negative, the time is before midnight.

  Write two methods that each take a time of day in 24 hour format, and return the
  number of minutes before and after midnight, respectively. Both methods should
  return a value in the range 0..1439.

  You may not use ruby's Date and Time methods.

  Explicit requirements
    Input:
      -string
    Output:
      -integer
    Rules:
      -input is a time of day in 24 hr format
      -return number of mins before/after midnight
      -range should be 0..1439
      -cannot use Date and Time methods

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  after_midnight('00:00') == 0
  before_midnight('00:00') == 0
  after_midnight('12:34') == 754
  before_midnight('12:34') == 686
  after_midnight('24:00') == 0
  before_midnight('24:00') == 0

#Data Structures
  Possible methods:
    -split
    -map
    -to_i
  Possible structures:
    -array

#Algorithm
  -init constant MINS_PER_HOUR
  -def after_midnight method with parameter (time_of_day)
  -split time of day string by ':' delimiter, returns array of strings, save in arr var
  -map array string elements into integers, update arr var
  -convert array[0] to mins using *= HOURS_TO_MINS
  -reduce arr var to additive sum using (:+)

  -repeat for before_midnight method
  --reduce array to subtractive sum using (:-)

  -Edge case 24:00
    -if time_of_day = '24;00'
      -reassign to '00:00'

   => expected return: integer
   => expected output: none

=end

#Code Implementation

  MINS_PER_HOUR = 60

def after_midnight(time_of_day)
  if time_of_day == '24:00'
    time_of_day = '00:00'
  end
  arr = time_of_day.split(':').map{|element| element.to_i}
  arr[0] *= MINS_PER_HOUR
  arr.reduce(:+)
end

def before_midnight(time_of_day)
  if time_of_day == '24:00'
    time_of_day = '00:00'
  end
  arr = time_of_day.split(':').map{|element| element.to_i}
  arr[0] *= MINS_PER_HOUR
  arr.reduce(:-)
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0


#### LS Solutuion ###
=begin

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

=end