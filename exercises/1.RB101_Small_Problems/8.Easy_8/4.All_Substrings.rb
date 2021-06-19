
=begin

#Problem: All Substrings
  Write a method that returns a list of all substrings of a string. The returned list should be
  ordered by where in the string the substring begins. This means that all substrings that start
  at position 0 should come first, then all substrings that start at position 1, and so on.

  Since multiple substrings will occur at each position, the substrings at a given position
  should be returned in order from shortest to longest.

  You may (and should) use the leading_substrings method you wrote in the previous exercise:

  Explicit requirements
    Input:
      -string
    Output:
      -array
    Rules:
      -sort rule 1: sorted by index location of first letter
      -sort rule 2: sorted by length of substring

  Implicit requirements:
    -use leading_substrings method from previos exercise

  Questions:
    -

#Examples / Test Cases:

  substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
  ]

#Data Structures
  Possible methods:
    -each_with_object
    -each_with_index
    -each
    -sort_by
    -sort_by_index
    -sort
  Possible structures:
    -array

#Algorithm
  -def method with parameter (string)
  -iterate
    -call leading_substrings on string
    -shift index starting position
  -sort by index, then length

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

def substrings(string)
  substrings = []

  (0..string.size).each do |start_index|
    slice = string.slice(start_index..string.size)
    substrings << leading_substrings(slice)
  end
  substrings.flatten
end

p(
  substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
)