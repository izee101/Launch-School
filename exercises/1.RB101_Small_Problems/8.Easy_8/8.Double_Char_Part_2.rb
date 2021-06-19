=begin

#Problem: Double Char (Part 2)
  Write a method that takes a string, and returns a new string in which every
  consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
  whitespace should not be doubled.


  Explicit requirements
    Input:
      -string
    Output:
      -string
    Rules:
      -only consonants are doubled

  Implicit requirements:
    -must separate consonants from alphabet

  Questions:
    -

#Examples / Test Cases:

  Write a method that takes a string, and returns a new string in which every
  consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
  whitespace should not be doubled.

#Data Structures
  Possible methods:
    -include?
    -each
    -join
    -chars
    -each_char
  Possible structures:
    -array

#Algorithm
  -define CONSONANTS constant, set to array of string consonants
  -define method with parameter (string)
  -init local var results as empty array
  -split string into individual chars in an array
  -iterate through array
    -double each char ONLY IF it is included in CONSONANTS
    -push new chars into results array
    -join results into a string
  - return results

   => expected return: string
   => expected output:

=end

#Code Implementation

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  results = []
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      results << char << char
    else
      results << char
    end
  end
  results.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""