=begin
Given the following expression, how would you access the name of the person?
=end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person.fetch(:name)



# correct answer, but think simpler.


#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

person[:name]
