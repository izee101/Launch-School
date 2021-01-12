=begin

#Problem: Palindromic Numbers
  Write a method that returns true if its integer argument is palindromic, false otherwise.
  A palindromic number reads the same forwards and backwards.

  Explicit requirements
    Input:
      -integer
    Output:
      -boolean
    Rules:
      -return true if palindromic integer, false otherwise

  Implicit requirements:
    -will have to convert to string and back

  Questions:
    -

#Examples / Test Cases:

  palindromic_number?(34543) == true
  palindromic_number?(123210) == false
  palindromic_number?(22) == true
  palindromic_number?(5) == true


#Data Structures
  Notes:
    -possible methods:
      -reverse
      -to_s
  Use:
    -all

#Algorithm
  -define palindrome? method with parameter num
  -convert num to string
  -check if original str == string.reverse

  => expected return: a boolean
  => expected output: none



=end

#Code Implementation

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

=begin
Further Exploration

Suppose your number begins with one or more 0s. Will your method still work? Why or why not? Is there any way to address this?

#method does not work with 0's in front
=> palindromic_number?(01010) returns false

Fix:

#### RETURN WITH MORE KNOWLEDGE OF OCTAL NUMBERS!
=end
