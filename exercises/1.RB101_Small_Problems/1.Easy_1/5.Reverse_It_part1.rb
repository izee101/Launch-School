# Reverse_It_part1.rb

def reverse_sentence(string)
  string.split(" ").reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

=begin
*Problem
Input:
  -string
Output:
  -string
rules:
  -string must be returned in reverse order
  -clarifying: only word order is reverses, not char order in words.
  -implicit: empty string should return empty string


*Examples / Test Cases
  puts reverse_sentence('') == ''
  puts reverse_sentence('Hello World') == 'World Hello'
  puts reverse_sentence('Reverse these words') == 'words these Reverse'

*Data Structures
choices:string
use: Array, because index is significant


*Algorithm
  -split string into array elements using " " as delimiter
  -reverse order of the array
  -join elements back into string using " " as delimiter
*Code
=end
