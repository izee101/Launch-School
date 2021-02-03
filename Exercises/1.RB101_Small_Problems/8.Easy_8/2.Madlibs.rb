=begin

#Problem: Madlibs
  Mad libs are a simple game where you create a story template with blanks for words. You, or
  another player, then construct a list of words and place them into the story, creating an
  often silly or funny story as a result.

  Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
  and injects those into a story that you create.


  Explicit requirements
    Input:
      -4 strings
    Output:
      -string sentence
    Rules:
      -get 4 strings from user
      -interpolate/concatenate strings into a sentence string

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  Enter a noun: dog
  Enter a verb: walk
  Enter an adjective: blue
  Enter an adverb: quickly

  Do you walk your blue dog quickly? That's hilarious!

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -prompt user for a noun, get input, save to a local var
  -(repeat 3x for verb, adjective, adverb)
  -interpolate a sentence string and print to console

   => expected return: nil
   => expected output: interpolated/concatenated string

=end

#Code Implementation

def prompt(msg)
  puts "=> #{msg}"
end

def sentence(noun, verb, adjective, adverb)
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

prompt('Enter a noun:')
noun = gets.chomp
prompt('Enter a verb:')
verb = gets.chomp
prompt('Enter an adjective:')
adjective = gets.chomp
prompt('Enter an adverb:')
adverb = gets.chomp

sentence(noun, verb, adjective,adverb)
