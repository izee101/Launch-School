# countdown.rb
# uses "while" & "until" loops
 
puts "Please enter a number to start your countdown!"
x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"


# countdown.rb -------------------------------> refractored

while x >= 0
  puts x
# x = x - 1        <-- this line
  x -= 1
end

puts "Done!"


# countdown.rb   -----------------------------> rephrased using an until loop

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"
