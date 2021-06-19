# Odd_Numbers.rb

range = (1..99).to_a
range.select { |num| puts num if  num.odd? }

=begin
*Problem:
  Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
Input:
  -array of numbers [1..99]
Output:
  -strings of numbers
rules:
  -only print odd numbers
  -number must be within range
  -numbers must be on separate lines
clarification:
  -

*Examples / Test Cases

*Data Structures
choices:
use: Array, String

*Algorithm
  - create array of numbers [1..99]
  - iterate through array & select only odd numbers
  - output each on a new line
*Code
=end

# Alternate solution

=begin
value = 1
while value <= 99
  puts value
  value += 2
end
=end
