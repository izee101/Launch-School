=begin
What method could you use to find out if a Hash contains a specific value in it?

Write a program to demonstrate this use.
=end

# .has_value?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.has_value?("painting")
  puts "Yep, I have that value"
else
  puts "Nah, I don't have it"
end



#----------------------------------------------------------------------------
puts "-------------------------------"

has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
