=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.
=end

=begin
*Problem
Input:
  -number
Output:
  -string
rules:
  -input integer has to be positive
  -output string must start with 1
  -output string must contain alternating 1's and 0's
  -length of output string must match given integer
clarification:
  -input validation?

*Examples / Test Cases
  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'

*Data Structures
choices: String, Array, Number
use: Array, index is significant

*Algorithm
 -create an array of 1's that match length of integer
 -map positive index elements to zero using gsub!
 -join array back into string

*Code
=end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
