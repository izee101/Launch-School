=begin

#Problem: Palindromic Substrings
  Write a method that returns a list of all substrings of a string that are palindromic.
  That is, each substring must consist of the same sequence of characters forwards as it does
  backwards. The return value should be arranged in the same sequence as the substrings appear
  in the string. Duplicate palindromes should be included multiple times.

  You may (and should) use the substrings method you wrote in the previous exercise.

  For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

  Explicit requirements
    Input:
      -string
    Output:
      -array of strings
    Rules:
      -all returned substrings must be palindromic
      -duplicates should appear multiple times
      -use previous substring method
      -consider all characters

  Implicit requirements:
    -

  Questions:
    -are single chars palindromic? == NO

#Examples / Test Cases:

  palindromes('abcd') == []
  palindromes('madam') == ['madam', 'ada']
  palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
  ]
  palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]

#Data Structures
  Possible methods:
    -subtrings (created)
    -
  Possible structures:
    -array

#Algorithm
  -define method with parameter (string)
  -call substring method, return array
  -select only substrings that can be reversed, return array

   => expected return: array containing all palindromic substrings
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


##### New Code #####
def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  palindromes = []
  all_substrings.each do |substring|
    palindromes << substring if palindrome?(substring)
  end
  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
  ]
p palindromes('knitting cassettes') == [
 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  ]