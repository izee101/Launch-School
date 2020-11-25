=begin
Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
=end

puts "My Solution"

movies = [2004,2006,2007,2010,2020]

output = movies.each {|movie| puts movie}

#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]
