=begin

#Problem: ASCII String Value
  Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
  The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord
  to determine the ASCII value of a character.)

  Explicit requirements
    Input:
      -string
    Output:
      -integer
    Rules:
      -return string ASCII value sum
      -may use String#ord

  Implicit requirements:
    -empty string == 0

  Questions:
    -

#Examples / Test Cases:

  ascii_value('Four score') == 984
  ascii_value('Launch School') == 1251
  ascii_value('a') == 97
  ascii_value('') == 0


#Data Structures
  Possible methods:
    -map
    -select
    -each
  Possible structures:
    -array

#Algorithm
  -define method ascii_value with parameter (string)
  -iterate through string, calling String#ord on each character to get ascii value
  -reduce values into a sum

   => expected return: an integer representing the sum of all ascii values in a given string
   => expected output: none

=end

#Code Implementation

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0