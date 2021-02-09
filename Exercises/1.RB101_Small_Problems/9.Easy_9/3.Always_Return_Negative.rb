=begin

#Problem: Always Return Negative
  Write a method that takes a number as an argument. If the argument is a
  positive number, return the negative of that number. If the number is 0 or
  negative, return the original number.

  Explicit requirements
    Input:
      -integer
    Output:
      -integer
    Rules:
      -it arg is positive, return negative
      -if arg is negative || 0, return original number

  Implicit requirements:
    -must be same object returned is negative || 0

  Questions:
    -

#Examples / Test Cases:

  negative(5) == -5
  negative(-3) == -3
  negative(0) == 0      # There's no such thing as -0 in ruby

#Data Structures
  Possible methods:
    -positive?
    -negative?
    -zero?
  Possible structures:
    -

#Algorithm
  -define method with parameter (number)
  -case statement
    -when zero, then return number
    -when negative, then return number
    -when positive, change to negative, then return number
      -multiply by -1

   => expected return: integer
   => expected output: none

=end

#Code Implementation
def negative(num)
  case
  when num.zero? == true
    num
  when num.negative? == true
    num
  when num.positive? == true
    num *= -1
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby