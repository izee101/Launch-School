=begin

#Problem: Palindromic Strings (Part 1)
  Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
  A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

  Explicit requirements
    Input:
      -string
    Output:
      -boolean
    Rules:
      -must return boolean true if palindrome
      -must return boolean false if otherwise
      -palindrone string must read same forwards & backwards
      -case, punctuation & spaces matter

  Implicit requirements:
    -

  Questions:
    -can string contain numbers? eg: '101' -YES
    -clarify: '1 01' is not a palindrome? -NO
    -clarify: 'Aaa' is not a palindrone? -NO

#Examples / Test Cases:
    palindrome?('madam') == true
    palindrome?('Madam') == false          # (case matters)
    palindrome?("madam i'm adam") == false # (all characters matter)
    palindrome?('356653') == true

#Data Structures
  Notes:
    - possible methods:
      reverse

  Use:
    -none

#Algorithm:
  -define palindrome? method with parameter str
  -check if original str == string.reverse

  => expected return: a boolean
  => expected output: none

=end

#Code Implementation

def palindrome?(str)
  str == str.reverse
end

palindrome?('madam') == true
# => true
palindrome?('Madam') == false          # (case matters)
# => true (that this is false)
palindrome?("madam i'm adam") == false # (all characters matter)
# => true (that this is false)
palindrome?('356653') == true
# => true

##### Further Exploration #####

=begin
  Write a method that determines whether an array is palindromic; that is,
  the element values appear in the same sequence both forwards and backwards in the array.

  #Algorithm:
    -define method array_palindrome? with parameter arr
    -check if arr == arr.reverse

    => expected return: a boolean
    => expected output: none
=end
#Code Implementation

def arr_palindrome?(arr)
  arr == arr.reverse
end

palindrome?(["m", "a", "d", "a", "m"]) == true
# => true
palindrome?(["M", "a", "d", "a", "m"]) == false # (case matters)
# => true (that this is false)
palindrome?(["m", "a", "d", "a", "m", " ", "i", "'", "m", " ", "a", "d", "a", "m"]) == false # (all characters matter)
# => true (that this is false)
palindrome?(["3", "5", "6", "6", "5", "3"]) == true
# => true

=begin
  Now write a method that determines whether an array or a string is palindromic;
  that is, write a method that can take either an array or a string argument,
  and determines whether that argument is a palindrome. You may not use an if, unless,
  or case statement or modifier.

  #Algorithm:
    -def palindrome_arr_or_str? with parameter ary_str
    -init local var char with an empty array
    -init local var count with a value of 0
    -iterate through ary_str
      -while count < ary_str.size
    -push current ary_str index value into chars
      -chars <<ary_str[count]
    -increment count by 1 and end loop
      -count += 1
    -check if chars.join == chars.join.reverse

    => expected return: a boolean
    => expected output: none
=end
#Code Implementation

def palindrome_arr_or_str?(ary_str)
  chars = []
  count = 0
  while count < ary_str.size
    chars << ary_str[count]
    count += 1
  end
  chars.join == chars.join.reverse
end

palindrome?('madam') == true
# => true
palindrome?('Madam') == false          # (case matters)
# => true (that this is false)
palindrome?("madam i'm adam") == false # (all characters matter)
# => true (that this is false)
palindrome?('356653') == true
# => true

palindrome?(["m", "a", "d", "a", "m"]) == true
# => true
palindrome?(["M", "a", "d", "a", "m"]) == false # (case matters)
# => true (that this is false)
palindrome?(["m", "a", "d", "a", "m", " ", "i", "'", "m", " ", "a", "d", "a", "m"]) == false # (all characters matter)
# => true (that this is false)
palindrome?(["3", "5", "6", "6", "5", "3"]) == true
# => true

##### Alternative solution #####

=begin

  def arr_palindrome?(arg)
    arg == arg.reverse
  end

=end