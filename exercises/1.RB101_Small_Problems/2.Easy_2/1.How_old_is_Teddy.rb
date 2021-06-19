# How_Old_is_Teddy?.rb

def random_age
  rand_num = rand(20..200)
  puts "Teddy is #{rand_num} years old!"
end

random_age

=begin
*Problem:
  Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
Input:
  -
Output:
  -String
rules:
  - random number between 20 and 200
clarification:
  -

*Examples / Test Cases
  Teddy is 69 years old!

*Data Structures
choices: Number - range
use:

*Algorithm
  -rand number chosen within range
  -print to console, interpolating rand number
*Code
=end
