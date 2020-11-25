=begin
Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.
=end

movies = {
  movie1: 2004,
  movie2: 2006,
  movie3: 2007,
  movie4: 2010,
  movie5: 2020,
}

puts movies[:movie1]
puts movies[:movie2]
puts movies[:movie3]
puts movies[:movie4]
puts movies[:movie5]
