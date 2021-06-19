# Greeting_a_user.rb

puts "What is your name?"
name = gets.chomp

scream_string = " WHY ARE WE SCREAMING?"

if name.end_with?('!') == true
  scream = "Hello #{name}." + scream_string
  puts scream.upcase!
else
  puts "Hello #{name}."
end

# Note: '!' appears in shouting version, refractor with .chop method

=begin
*Problem:
  Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.
Input:
  -string
Output:
  -string
rules:
  - if input ends with '!' output is UPCASED, scream_string is appended
clarification:
  - only if name ends with '!' ?
  - what is '!' is included elsewhere ('!name')?


*Examples / Test Cases
  What is your name? Bob
  Hello Bob.

  What is your name? Bob!
  HELLO BOB. WHY ARE WE SCREAMING?

*Data Structures
choices:
use: String

*Algorithm
  - get name string from user
  - check if name ends with '!'
  - if name ends with '!', append scream_string

*Code
=end

# ALTERNATE SOLUTION
=begin
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
=end
