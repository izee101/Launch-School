# How_big_is_the_room.rb

puts "Enter the length of the room in meters:"
length = gets.chomp
puts "Enter the width of the room in meters:"
width = gets.chomp

sq_meters = (length.to_f) * (width.to_f)
sq_feet = sq_meters * 10.7639

sq_meters = sq_meters.round(2)
sq_feet = sq_feet.round(2)

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."

=begin
*Problem:
  Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

  Note: 1 square meter == 10.7639 square feet

  Do not worry about validating the input at this time.
Input: 2 String Numbers
  -
Output:
  - String containing Numbers
rules:
  -input length & width in meters
  -output area in both sq meters and sq feet
clarification:
  -

*Examples / Test Cases
  Enter the length of the room in meters:
  10
  Enter the width of the room in meters:
  7
  The area of the room is 70.0 square meters (753.47 square feet).

*Data Structures
choices: String, Numbers
use: String, Numbers

*Algorithm
  - gets length from user
  - gets width from user
  - calculate area in meters
  - convert sq meters to sq feet
  - output both
*Code
=end


# ALTERNATE SOLUTIONS
=begin
SQMETERS_TO_SQFEET = 10.7639

puts '==> Enter the length of the room in meters: '
length = gets.to_f

puts '==> Enter the width of the room in meters: '
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
     "square meters (#{square_feet} square feet)."

=end
