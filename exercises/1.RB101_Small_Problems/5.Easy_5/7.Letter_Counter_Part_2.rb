=begin

#Problem: Letter Counter (Part 2)
  Modify the word_sizes method from the previous exercise to exclude non-letters
  when determining word size. For instance, the length of "it's" is 3, not 4.

  Explicit requirements
    Input:
      -string
    Output:
      -hash
    Rules:
      - exclude non-alphabetic chars

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
  word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
  word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
  word_sizes('') == {}

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

ALPHABET = [*'a'..'z']

def word_sizes(string)
  hash = Hash.new(0)          # hash = {} will not work, look at LS solution
  string.split.include?(ALPHABET).each do |word|
    hash[word.length] += 1
  end
  hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}