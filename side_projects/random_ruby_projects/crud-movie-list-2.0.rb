movies = {
  pacific_rim: 9,
  batman_begins: 7,
}

#--------Greeting

puts "Hello, and welcome to your new movie database!"
puts " "
puts "What name should I call you?"
name = gets.chomp.capitalize!


#--------User decision
puts "OK #{name}, what would you like to do?"
puts "(Select a number.)"

puts "-- 1. Add a movie"
puts "-- 2. View all movies"
puts "-- 3. Update a movie"
puts "-- 4. Delete a movie"
choice = gets.chomp

#--------Control Flow
case choice

#--------Choice 1 -------------
  when "1"
    puts "OK #{name}, what movie title would you like to add?"
    #gets user input, converts for program to use
    title = gets.chomp.gsub(" ", ' '=>'_').downcase
    #converts to a symbol for has to use
    title_sym = title.to_sym
    #converts to a nice format to return to user
    title_norm = title.gsub("_",' ').split.map(&:capitalize).join(' ')

#---checks if movie is already saved
    if movies[title_sym].nil?

#---if movie not saved, otherwise jump to else.
    puts "Ok #{name}, What rating would you like to give it?"
    rating = gets.chomp

      return "rating must be a number from 1 - 10." unless rating.is_a? Integer

      return "n must be greater than 0." if n <= 0
=begin old code replaces by unless statement
    begin
      rating = Integer(rating)
    rescue ArgumentError, TypeError
      puts "Invalid, please enter a number from 1-10!"
      exit
    end
=end

#---Adds the movie title & rating to the hash
    movies[title.to_sym] = rating.to_i


    puts "Awesome #{name}!"
    puts "I've successfully added '#{title_norm}' to your list"
    puts "It has a rating of '#{rating}'"

#----only activates if movie is already in database.
    else
      puts "Sorry #{name},"
      puts "I just checked and '#{title_norm}' is already on your list!"
      puts "It has a rating of #{rating}"
    end


#--------Choice 2 -------------
  when "2"
    puts "Updated!"

#--------Choice 3 -------------
  when "3"
    puts "Movies!"

#--------Choice 4 -------------
  when "4"
    puts "Deleted!"

#--------Error handling -------------
  else
    puts "Error!"
end

puts " "
puts "#{name}, here is your current list:"
puts movies
