# Reverse_It_part2.rb

=begin
*Problem
Input:
  -string of 1 to many words
Output:
  -string
rules:
  -words in string >= 5 chars are reversed
  -each string only contains letters and spaces
  -spaces only when string length is > 1 word

*Examples / Test Cases
  puts reverse_words('Professional')          # => lanoisseforP
  puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
  puts reverse_words('Launch School')         # => hcnuaL loohcS

*Data Structures
choices: string, array
use: array

*Algorithm
-split string into array of words
-iterate through each word in array
-reverse word if >= 5 chars
-join array back into string

*Code
=end

def reverse_words(string)
  words = []

  string.split.map do |element|
    element.reverse! if element.length >= 5
    words << element
  end
  
  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
