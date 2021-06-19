=begin

#Problem: Alphabetical Numbers
  Write a method that takes an Array of Integers between 0 and 19, and returns an Array of
  those Integers sorted based on the English words for each number:

  zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
  fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

  Explicit requirements
    Input:
      -array
    Output:
      -array
    Rules:
      -Original array has integers between 0-19
      -New array must contain string representations of original integers
      -New array must be sorted based on integer number, NOT letters


  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  alphabetic_number_sort((0..19).to_a) == [
    8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
    6, 16, 10, 13, 3, 12, 2, 0
  ]

#Data Structures
  Possible methods:
    -sort
    -
  Possible structures:
    -array
    -hash

#Algorithm
  -define method with parameter (array)
  -sort array numerically
  -swap integers for strings
    -create hash of word representation of each num
    -map sorted array using hash
    -return new array

   => expected return: sorted array of strings representing numbers
   => expected output:

=end

#Code Implementation

NUM_TO_WORDS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
  7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve',
  13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
  18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(array)
  array.sort.map do |num|
    NUM_TO_WORDS[num]
  end
end

 p alphabetic_number_sort((0..19).to_a) == [
   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
   6, 16, 10, 13, 3, 12, 2, 0
]