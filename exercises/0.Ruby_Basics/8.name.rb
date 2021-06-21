# Write a program called name.rb that asks the user to type in their name,
# and then prints out a greeting message with their name included.

puts "Please enter your name: "
name = gets.chomp
puts "Hello #{name}, it is a pleasure to meet you!"

=begin
Add another section onto name.rb that prints the name of the user 10 times.
You must do this without explicitly writing the puts method 10 times in a row.
  Hint: you can use the times method to do something repeatedly.
=end

10.times { puts name }

=begin
Modify name.rb again so that it first asks the user for their first name,
saves it into a variable, and then does the same for the last name.
Then outputs their full name all at once.
=end

puts "What is your first name?"
first_name = gets.chomp
puts "Ok #{first_name}, what is your last name?"
last_name = gets.chomp

puts "Alright, so your full name is #{first_name} #{last_name}."