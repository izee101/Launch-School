=begin

#Problem: Get The Middle Character
  Write a method that takes a non-empty string argument, and returns the middle
  character or characters of the argument. If the argument has an odd length,
  you should return exactly one character. If the argument has an even length,
  you should return exactly two characters.

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -arg string is non empty
      -if arg string length is odd, return 1 char
      -if arg string length is even, return 2 chars

  Implicit requirements:
    -

  Questions:
    -do spaces count as chars? = YES

#Examples / Test Cases:

  center_of('I love ruby') == 'e'
  center_of('Launch School') == ' '
  center_of('Launch') == 'un'
  center_of('Launchschool') == 'hs'
  center_of('x') == 'x'

#Data Structures
  Possible methods:
    -split       -odd?
    -chars       -even?

  Possible structures:
    -array

#Algorithm
  -define method with parameter (string)
  -check if string length is even? || odd?
    -if odd, return middle char
      -index = (length / 2) + 1
      -return index
    -if even, return middle two chars
      -index = length / 2
      -return index from both sides

   => expected return: string concatining 1 or 2 charasters
   => expected output: none

=end

#Code Implementation

def center_of(string)
  str_length = string.length
  case
  when str_length.odd?
    index = (str_length / 2)
    return string[index]
  when string.length.even?
    indexes = []
    index_left = (str_length / 2) - 1
    index_right = (str_length / 2)
    indexes << string[index_left]
    indexes << string[index_right]
    return indexes.join
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'