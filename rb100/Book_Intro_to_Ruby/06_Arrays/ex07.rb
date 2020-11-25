=begin
Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.
=end



names = ['bob', 'joe', 'susan', 'margaret']

names.each_with_index { |x| puts x }

# bob
# joe
# susan
# margaret

# Not quite there. This only returns the elements without their indexes

#----------------------------------------------------------------------------
puts "-------------------------------"

# updated with my variable names

# Literal list from 0 to 3
names.each_with_index do | name, index |
  puts "#{index}. #{name}"
end

# 0. bob
# 1. joe
# 2. susan
# 3. margaret

# More human friendly list from 1 to 4
names.each_with_index do | name, index |
  puts "#{index + 1}. #{name}"
end

# 1. bob
# 2. joe
# 3. susan
# 4. margaret
