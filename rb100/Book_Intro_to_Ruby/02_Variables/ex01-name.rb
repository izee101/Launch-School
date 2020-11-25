=begin
Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

=end

# name.rb
puts "My Solution"

puts "Please enter your name below:"
name = gets.chomp
puts "Hello #{name}, it is very nice to meet you!"

#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

puts "What is your name?"
name = gets.chomp
puts "Hello " + name
