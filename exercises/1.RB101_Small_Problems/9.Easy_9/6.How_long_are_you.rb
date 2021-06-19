=begin

#Problem: How long are you?
  Write a method that takes a string as an argument, and returns an Array that
  contains every word from the string, to which you have appended a space and
  the word length.

  You may assume that words in the string are separated by exactly one space, and
  that any substring of non-space characters is a word.

  Explicit requirements
    Input:
      -string
    Output:
      -array
    Rules:
      -words become elements in array
      -each element is paired with string representation of its length
      -any substring of non-space chars is a word

  Implicit requirements:
    -converting word lengths to strings

  Questions:
    -

#Examples / Test Cases:

  word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

  word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

  word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

  word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

  word_lengths("") == []

#Data Structures
  Possible methods:
    -length
    -size
    -each_with_object
  Possible structures:
    -array
    -hash

#Algorithm
  -define method with parameter (string)
  -init local var with empty hash
  -split string into words, returns array
  -map each word to hash key, set values to length of word
  -convert hash to an array

   => expected return:
   => expected output:

=end

#Code Implementation
def word_lengths(string)
  words = string.split
  words.each do |word|
    word << " #{word.length}"
  end
  words
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []