=begin

#Problem: The End Is Near But Not Here
  Write a method that returns the next to last word in the String passed to it as an argument.
  Words are any sequence of non-blank characters.
  You may assume that the input String will always contain at least two words.


  Explicit requirements
    Input:
      -string
    Output:
      -sub string
    Rules:
      -return the next to last word in string
      -"words" are any sequence of non-blank characters
      -input string will always contain at least two words

  Implicit requirements:
    -

  Questions:
    -does puntuation like commas count? == YES?

#Examples / Test Cases:

  penultimate('last word') == 'last'
  penultimate('Launch School is great!') == 'is'

#Data Structures
  Possible methods:
    -split
  Possible structures:
    -array

#Algorithm
  -def method with parameter (string)
  -split string into words
  -return word at index -2

   => expected return: string
   => expected output: none

=end

#Code Implementation

def penultimate(string)
  last_word = string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'