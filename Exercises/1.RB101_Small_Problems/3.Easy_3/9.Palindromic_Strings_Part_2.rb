=begin

#Problem: Palindromic Strings (Part 2)
  Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
  This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
  If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

  Explicit requirements
    Input:
      -string
    Output:
      -boolean
    Rules:
      -return true if palindrome, false otherwise
      -ignore case sensitivity
      -ignore non-alphanumeric characters

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  real_palindrome?('madam') == true
  real_palindrome?('Madam') == true           # (case does not matter)
  real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
  real_palindrome?('356653') == true
  real_palindrome?('356a653') == true
  real_palindrome?('123ab321') == false

#Data Structures
  Notes:
    -possible methods:
      -select
  Use:
    -select

#Algorithm
  -init ALPHANUM constant, assigned an array containing ranges of valid input strings
    -[*('a..z'), *('A..Z'), *('0'..'9')]
  -define real_palindrome? method with parameter str
  -init local var new_arr assigned with an empty array
  -call str.downcase to transform capital letters
    -returns new string
  -call str.chars
    -returns array of letter strings
  -call str.each with block invocation parameter |char|
    -push char into new_arr if ALPHANUM includes the character
    -- new_arr << char if ALPHANUM.include?(char)
  -call arr.join on new_array and reassign to new_arr
    -- new_arr = new_arr.join('')
  -call palindrome? method on new_arr

   => expected return: a boolean
   => expected output: none

=end

#Code Implementation
def palindrome?(str)
  str == str.reverse
end

=begin
  ALPHANUM = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]

  def real_palindrome?(str)
    new_arr = []
    str = str.downcase
    str = str.chars
    str = str.each do |char|
      new_arr << char if ALPHANUM.include?(char)
    end
    new_arr = new_arr.join('')
    palindrome?(new_arr)
  end
=end

## Refractored code ##
def palindrome?(str)
  str == str.reverse
end

ALPHANUM = [*('a'..'z'), *('A'..'Z'), *('0'..'9')]

def real_palindrome?(str)
  new_arr = []
  str.downcase.chars.each do |char|
    new_arr << char if ALPHANUM.include?(char)
  end
  new_arr = new_arr.join('')
  palindrome?(new_arr)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

=begin
Further Exploration

Read the documentation for String#delete, and the closely related String#count
(you need to read count to get all of the information you need for delete.)

str.delete Returns a copy of str with all characters in the intersection of its arguments deleted.
Uses the same rules for building the set of characters as #count.

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

=end