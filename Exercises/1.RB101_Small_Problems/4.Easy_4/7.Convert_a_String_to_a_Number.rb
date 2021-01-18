=begin

#Problem: Convert a String to a Number!
  The String#to_i method converts a string of numeric characters (including an optional
  plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer())
  behave similarly. In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate number as an
integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about invalid
  characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby to convert a
string to a number, such as String#to_i, Integer(), etc. Your method should do this the
old-fashioned way and calculate the result by analyzing the characters in the string.

  Explicit requirements
    Input:
      - string
    Output:
      - integer
    Rules:
      -cannot use String#to_i, Integer(), etc...

  Implicit requirements:
    -

  Questions:
    -Invalid characters? = IGNORE
    -Negative numbers? = IGNORE

#Examples / Test Cases:

  string_to_integer('4321') == 4321
  string_to_integer('570') == 570

#Data Structures
  Possible methods:
    -map
    -each
    -select
  Possible structures:
    -hash

#Algorithm
  -init constant DIGITS assigned to a hash
  -populate hash keys as string numbers, assigned to their corresponding integer
  number as values
  -define string_to_integer method with parameter (string)
  -split string into an array of characters
  -map each string character to corresponding integer using DIGITS hash
  -rejoin integer values to produce final number (no join method for integers, use math)
    -init local variable value, assigned to zero
    -iterate over each mapped digit with block invocation
      -block invocation should take each digit and multiply by 10
      -then multiply new value by 10
      -then add next digit to value
  -return final integer

   => expected return: integer converted from string form
   => expected output: none

=end

#Code Implementation

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # returns array of integers

  # value = 0
  # digits.each { |digit| value = 10 * value + digit }
  # value
  digits.reduce { |value, digit| (value * 10) + digit } # mechanically 'joins' integers

end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570