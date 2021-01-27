=begin

#Problem: Letter Swap
  Given a string of words separated by spaces, write a method that takes this string of
  words and returns a string in which the first and last letters of every word are
  swapped.

  You may assume that every word contains at least one letter, and that the string will
  always contain at least one word. You may also assume that each string contains nothing
  but words and spaces.

  Explicit requirements
    Input:
      -string
    Output:
      -string modified
    Rules:
      -1st & last letters of every word in string is swapped

  Implicit requirements:
    -

  Questions:
    -every word has at least 1 letter? = YES
    -string always has at least 1 word? = YES
    -string only contains words & spaces? = YES

#Examples / Test Cases:

  swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
  swap('Abcde') == 'ebcdA'
  swap('a') == 'a'

#Data Structures
  Possible methods:
    - helper method (swap_letters)
    -split
    -map
    -chars
  Possible structures:
    - array

#Algorithm
  -define swap method with parameter (string)
  -split string into array of words, returns new array
  -map through each word and call swap_letters, returns new array
    -define swap_letters method with parameter (word)

    -split word into individual chars, returns an array
      -prepend a copy of last letter to front of array
      -pop last letter off
      -push copy of 2nd letter (old 1st) to end of array
      -delete 2nd letter
      -returns swapped array of chars
      -join array back into a word

  -join array back into a string, returns new string

   => expected return: modified string
   => expected output: none

=end

# Code Implementation

=begin
def swap_letters(word)
  word = word.chars
  word = word.prepend(word[-1])
  word.pop
  word = word.push(word[1])
  word.delete_at(1)
  word = word.join
end

def swap(string)
  string = string.split
  string = string.map{|word| swap_letters(word)}
  string = string.join(' ')
end
=end

# Refractored
def swap_letters(word)
  word = word.chars.prepend(word[-1])
  word.pop
  word.push(word[1]).delete_at(1)
  word.join
end

def swap(string)
  string = string.split.map { |word| swap_letters(word) }.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'



=begin
#### LS Solution ####

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

=end