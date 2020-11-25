=begin
Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.
=end

# name.rb
puts "My Solution"

puts "Please enter your name below:"
name = gets.chomp
puts "Hello #{name}, it is very nice to meet you!"

# name.rb continued

10.times { puts "#{name}" }

#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

puts "What is your name?"
name = gets.chomp
puts "Hello " + name

# name.rb continued

10.times do
  puts name
end
