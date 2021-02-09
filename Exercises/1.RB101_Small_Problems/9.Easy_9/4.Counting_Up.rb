=begin

#Problem: Counting Up
  Write a method that takes an integer argument, and returns an Array of all
  integers, in sequence, between 1 and the argument.

  You may assume that the argument will always be a valid integer that is
  greater than 0.

  Explicit requirements
    Input:
      -integer
    Output:
      -array
    Rules:
      -assume arg integer > 0

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  sequence(5) == [1, 2, 3, 4, 5]
  sequence(3) == [1, 2, 3]
  sequence(1) == [1]

#Data Structures
  Possible methods:
    -
  Possible structures:
    -array

#Algorithm
  -define method with parameter (num)
  -init local var sequence with an empty array
  -loop from 1 upto num, pushing each result to sequence array
  -return sequence array

   => expected return: array
   => expected output:

=end

#Code Implementation

def sequence(num)
  sequence = []
  1.upto(num) do |digit|
    sequence << digit
  end
  sequence
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]