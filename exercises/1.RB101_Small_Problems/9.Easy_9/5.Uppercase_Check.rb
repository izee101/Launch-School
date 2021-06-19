=begin

#Problem: Uppercase Check
  Write a method that takes a string argument, and returns true if all of the
  alphabetic characters inside the string are uppercase, false otherwise.
  Characters that are not alphabetic should be ignored.

  Explicit requirements
    Input:
      -string
    Output:
      -boolean
    Rules:
      -return true if ALL letters are uppercase, false otherwise
      -ignore non-alphabetic chars

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  uppercase?('t') == false
  uppercase?('T') == true
  uppercase?('Four Score') == false
  uppercase?('FOUR SCORE') == true
  uppercase?('4SCORE!') == true
  uppercase?('') == true

#Data Structures
  Possible methods:
    -upcase
    -each
    -chars
  Possible structures:
    -array

#Algorithm
  -define method with parameter (string)
  init local var letters with an empty array
  -split string into individual chars, returns an array
  -iterate through string array, only push to letters if
    - char == char.upcase
  - check if string == letters.join, returns boolean

   => expected return: boolean
   => expected output: none

=end

#Code Implementation

def uppercase?(string)
  letters = []
  string.chars.each do |char|
    if char == char.upcase
      letters << char
    end
  end
  string == letters.join
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true