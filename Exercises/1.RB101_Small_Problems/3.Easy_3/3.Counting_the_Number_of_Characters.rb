=begin

#Problem: Counting the Number of Characters
  Write a program that will ask a user for an input of a word or multiple words and give
  back the number of characters. Spaces should not be counted as a character.

  Explicit requirements
    Input:
      - 1 to many words
        - string(s)
    Output:
      - string
        - number of chars
    Rules:
      -spaces do not count as chars

  Implicit requirements:
    -punctuation counts
    -inline input (print instead of puts)

  Questions:
    -

#Examples / Test Cases:
  input:
    Please write word or multiple words: walk
  output:
    There are 4 characters in "walk".

  input:
    Please write word or multiple words: walk, don't run
  output:
    There are 13 characters in "walk, don't run".


#Data Structures
  Notes:
    -order does not matter
    -need to count individual chars, excluding spacces

  Use:
    -Array

#Algorithm
  -get input string from user
    -store in input variable
  -split string into an array of chars
  -count chars and store in characters variable
    -reject spaces
  -display output including chars and input

=end

#Code Implementation

print 'Please write word or multiple words:'
input = gets.chomp

characters = input.chars.reject { |char| char == " "}

print "There are #{characters.count} characters in \"#{input}\"."

=begin ##### ALTERNATE SOLUTIONS #####

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

#We don't want to count spaces here, so we use String#delete to return a new String
#with all spaces removed from it. The original string stored in input is left intact.

-----

print "Please write a word or multiple words: "
words = gets.chomp
chars_no_spaces = words.chars.select {|char| char != " "}
puts "There are #{chars_no_spaces.length} in \"#{words}\"."

-----

puts "Please write word or multiple words:"
str = gets.chomp
length = str.split(' ').join.length
puts "There are #{length} characters in \"#{str}\"."

-----


puts "Please write a word or multiple words:"
input = gets.chomp
num_of_chars = input.count("^\s")
puts "There are #{num_of_chars} characters in \"#{input}\"."


-----

print "=> Please enter a word or multiple words: "
input = gets.chomp

chars = []
input.chars { |char| chars << char if char != ' ' }

puts "=> There are #{chars.size} characters in \"#{input}\"."

-----

def display(output)
    puts output
end

def input
    gets.chomp.to_s
end

display("Please write word or multiple words")
sentence = input()

def get_word_count(sentence)
    sentence.gsub(/\s+/, "").chars.length
end

display("#{get_word_count(sentence)}")

-----

puts "Please write word or multiple words:"
words = gets.chomp
char_counter = words.gsub(" ", "").size
puts "There are #{char_counter} in '#{words}'"

-----

puts "Please write word or multiple words:"
user_input = gets.chomp

def character_count(string)
  new_string = string.split.join
  total_chars = new_string.size
  puts "There are #{total_chars} characters in \"#{string}\"."
end

character_count(user_input)

-----

# logic extraction to a method for repeat use

def character_count(word)
  count = word.split(" ").join.length
  puts "There are #{count} characters in \"#{word}\"."
end

print "Please write word or multiple words: "
input = gets.chomp

character_count(input)

-----

def prompt(message)
  puts("==> #{message}")
end

prompt("Please write a word or multiple words:")
user_string = gets.chomp

character_count = user_string.gsub(/\s+/,"").length
prompt(" There are #{character_count} characters in '#{user_string}'.")

-----

puts "Please enter a word or a phrase!"
phrase = gets.chomp

def count_chars(phrase)
  phrase_size = 0
  split_phrase = phrase.split()

  if split_phrase.size < 2
    "There are #{split_phrase.size} characters in: #{phrase}"
  else
    split_phrase.each {|word| phrase_size += word.size}
    "There are #{phrase_size} characters in: #{phrase}"
  end
end

p count_chars(phrase)

-----
=end
