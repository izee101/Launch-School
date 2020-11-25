=begin
Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.
=end

def greeting(name)
  puts "Hello #{name}, it's nice to meet you!"
end

puts greeting("Isaiah")


#----------------------------------------------------------------------------
puts "-------------------------------"

puts "Book Solution"

def greeting(name)
  "Hello, " + name + ". How are you doing?"
end

puts greeting("Bob")
