=begin

#Problem: Sequence Count
  Create a method that takes two integers as arguments. The first argument is a
  count, and the second is the first number of a sequence that your method will
  create. The method should return an Array that contains the same number of
  elements as the count argument, while the values of each element will be
  multiples of the starting number.

  You may assume that the count argument will always have a value of 0 or greater,
  while the starting number can be any integer value. If the count is 0, an empty
  list should be returned.


  Explicit requirements
    Input:
      - two integers (count, starting number)
    Output:
      - array
    Rules:
      - array should contain same number of elements indicated by count
      - values of each element are multiples of starting number
      -if count is zero, return empty array

  Implicit requirements:
    -count will always have a value of 0 or greater
    -starting number can be any integer value

  Questions:
    -handle negative numbers? == YES
    -handle floats? == NO

#Examples / Test Cases:

  sequence(5, 1) == [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []

#Data Structures
  Possible methods:
    -upto
    -map
    -each
    -times
  Possible structures:
    -array

#Algorithm
  -define method with parameters (count, first)
  -init local var 'sequence' as empty array
  -init local var 'number', set to parameter 'first'
  -Loop: call times on count
    -push 'number' into 'sequence' array
    -increment 'number' by 'first'
  return 'sequence'

   => expected return: array
   => expected output: none

=end

#Code Implementation

def sequence(count, first)
  sequence = []
  number = first

  count.times do
    sequence << number
    number += first
  end

  sequence
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []