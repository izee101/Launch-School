=begin
What is the value of a, b, and c in the following program?
=end

string = "Welcome to America!"

a = string[6]
  # "m"             ---wrong

  # "e" is at position index 6. Starting from index 0

b = string[11]
  # "m"             ---wrong

  # "A" is at position index 11. Starting from index 0, including spaces!

c = string[19]
  # " ! "           ---wrong

  # nil because position 19 is longer than the string. Ruby won't throw an
  # error for this, so watch out for it!

  #NEED TO REVIEW INDEXES IN ARRAYS!


#----------------------------------------------------------------------------
puts "-------------------------------"
