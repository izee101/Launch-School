=begin

#Problem: Clean up the words
  Given a string that consists of some words (all lowercased) and an assortment of
  non-alphabetic characters, write a method that returns that string with all of the
  non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters
  occur in a row, you should only have one space in the result (the result should never have
  consecutive spaces).

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -replace non-alphabetic chars in string with spaces
      -consecutive spaces reduced to 1 space


  Implicit requirements:
    -

  Questions:
    -case sensitive? == NO, all letters are lowercase
    -return same object or a new one? == new object

#Examples / Test Cases:

  cleanup("---what's my +*& line?") == ' what s my line '

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -save valid chars in a constant array
  -define cleanup method with param (string)
  -iterate through each char in string with block
    -block  should check if char is included in constant
    -if included, add to new array
    -else, add a space, unless previous char was a space
  -join all chars in new array together

   => expected return:
   => expected output:

=end

#Code Implementation

ALPHABET = [*'a'..'z']

def cleanup(string)
  cleaned_chars = []
  string.chars.each do |char|
    if ALPHABET.include?(char)
      cleaned_chars << char
    else
      cleaned_chars << ' ' unless cleaned_chars.last == ' '
    end
  end
  cleaned_chars.join
end

p cleanup("---what's my +*& line?") == ' what s my line '