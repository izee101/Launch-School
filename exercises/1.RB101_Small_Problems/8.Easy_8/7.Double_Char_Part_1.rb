=begin

#Problem: Double Char (Part 1)
  Write a method that takes a string, and returns a new string in which
  every character is doubled.


  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -double every char in string
      -return new string

  Implicit requirements:
    -

  Questions:
    -Are spaces also doubled? == YES


#Examples / Test Cases:

  repeater('Hello') == "HHeelllloo"
  repeater("Good job!") == "GGoooodd  jjoobb!!"
  repeater('') == ''

#Data Structures
  Possible methods:
    -chars
    -join
    -each
  Possible structures:
    -array

#Algorithm
  -define method with parameter (string)
  -init an empty array for results
  -split string into individual chars in an array
  -iterate through array
    -double each char
    -push new chars into results array
    -join results into a string
  - return results

   => expected return: string
   => expected output: none

=end

#Code Implementation

def repeater(string)
  results = []
  string.chars.each do |char|
    char = char + char
    results << char
  end
  results.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''