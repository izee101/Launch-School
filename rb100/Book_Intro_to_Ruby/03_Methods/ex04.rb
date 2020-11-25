=begin
What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end

#returns nil, also prints nothing to the screen because of the explicit return on line 6, so line 7 is never executed.
#----------------------------------------------------------------------------
puts "-------------------------------"

puts "Book Solution"

#It will not print anything to the screen.
