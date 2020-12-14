# Sum_of_Digits.rb

=begin
*Problem:
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

Input:
  -Number
Output:
  -Number
rules:
  -
clarification:
  -

*Examples / Test Cases
  puts sum(23) == 5
  puts sum(496) == 19
  puts sum(123_456_789) == 45

*Data Structures
choices:
use: array

*Algorithm
  -convert number to string
  -split number into array of strings
  -map strings into integers
  -reduce integers with addition
  -return result
*Code
=end

def sum(number)
  number.to_s.split('').map {|num| num.to_i}.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
