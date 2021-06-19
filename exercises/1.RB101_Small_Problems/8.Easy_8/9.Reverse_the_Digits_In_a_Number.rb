=begin

#Problem: Reverse the Digits In a Number

  Write a method that takes a positive integer as an argument and returns that
  number with its digits reversed.

  Explicit requirements
    Input:
      -integer
    Output:
      -integer
    Rules:
      -reverse argument integer digits
      -argument integer is assumed positive

  Implicit requirements:
    -

  Questions:
    -handle octal numbers (leading zeroes)? = NO

#Examples / Test Cases:

  reversed_number(12345) == 54321
  reversed_number(12213) == 31221
  reversed_number(456) == 654
  reversed_number(12000) == 21 # No leading zeros in return value!
  reversed_number(12003) == 30021
  reversed_number(1) == 1

#Data Structures
  Possible methods:
    -reverse
    -to_s
    -to_i
    -digits
  Possible structures:
    -array

#Algorithm
  -define method with parameter (num)

   => expected return: integer
   => expected output: none

=end

#Code Implementation

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1