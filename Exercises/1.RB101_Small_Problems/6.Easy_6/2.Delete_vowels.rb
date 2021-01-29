=begin

#Problem: Delete vowels
  Write a method that takes an array of strings, and returns an array of the same string values,
  except with the vowels (a, e, i, o, u) removed.

  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -remove all vowels from original string

  Implicit requirements:
    -

  Questions:
    -return original string or new string?

#Examples / Test Cases:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

#Data Structures
  Possible methods:
    -delete
    -remove
    -gsub
    -select
    -chars
  Possible structures:
    -array

#Algorithm


   => expected return:
   => expected output:

=end

#Code Implementation

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end