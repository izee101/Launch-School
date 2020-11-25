=begin
Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end


# using_regex

def has_lab(string)
  if /lab/.match(string)
    puts "'#{string}' contains lab!"
  else
    puts "No match found"
  end
end

has_lab("laboratory")
has_lab("experiment")
has_lab("Pans Labyrinth")
has_lab("elaborate")
has_lab("polar bear")



#----------------------------------------------------------------------------
puts "-------------------------------"

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end


check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
