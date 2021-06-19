=begin

#Problem: Letter Counter (Part 1)
  Write a method that takes a string with one or more space separated words and returns a
  hash that shows the number of words of different sizes.

  Words consist of any string of characters that do not include a space.

  Explicit requirements
    Input:
      -string
    Output:
      -hash
    Rules:
      -words are spearated by spaces
      -string can be 1+ words
      -hash key = length of word
      -hash value = frequency

  Implicit requirements:
    -punctuation counts for word length
    -hash is sorted by key size ascending

  Questions:
    -

#Examples / Test Cases:

  word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
  word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
  word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
  word_sizes('') == {}

#Data Structures
  Possible methods:
    -
  Possible structures:
    -hash
    -array

#Algorithm
  -define method
  -init empty hash
  -split string into array of words
  -count length of each word
    -set lengths as keys for hash
  -count frequency of each length in array
    -set frequencies as values for hash

   => expected return: hash {word_length => freq, ...}
   => expected output: none

=end

#Code Implementation

def word_sizes(string)
  hash = Hash.new(0)          # hash = {} will not work, look at LS solution
  string.split.each do |word|
    hash[word.length] += 1
  end
  hash
end



p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}



#### LS Solution ####

# def word_sizes(words_string)
#   counts = Hash.new(0)
#   words_string.split.each do |word|
#     counts[word.size] += 1
#   end
#   counts
# end