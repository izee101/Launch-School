=begin

#Problem: Leading Substrings
  Write a method that returns a list of all substrings of a string that start at the beginning
  of the original string. The return value should be arranged in order from shortest to longest
  substring.


  Explicit requirements
    Input:
      -string
    Output:
      -array
    Rules:
      -list elements are all possible substrings
      -sort in ascending length order

  Implicit requirements:
    -

  Questions:
    -will string always be a single 'word'? == YES
    -handle non-alphabetic chars? == NO

#Examples / Test Cases:

  leading_substrings('abc') == ['a', 'ab', 'abc']
  leading_substrings('a') == ['a']
  leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#Data Structures
  Possible methods:
    -chars
    -each
    -split
    -each_with_index
  Possible structures:
    -array

#Algorithm
  -define method with parameter (string)
  -init local var 'substrings_list' set to empty array
  -init 'substring' variable
  -split array into individual chars
  -iterate through each char, incremeting 'substring' by addind char to it
  -push each substring to 'substrings_list' array



   => expected return: array
   => expected output: none

=end

#Code Implementation

def leading_substrings(string)
  substrings_list = []
  substring = ''
  string.chars.each do |char|
    substring += char
    substrings_list << substring
  end
  substrings_list
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']