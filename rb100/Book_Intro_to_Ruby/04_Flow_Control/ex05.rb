=begin
# When you run the following code...

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

# Why do you get this error and how can you fix it?
=end



def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

# Added the missing "end" keyword for the if statement.
#----------------------------------------------------------------------------
puts "-------------------------------"

# You get this error because the end in the code above gets matched with the if..else statement. The error message is telling us that the interpreter was expecting the keyword end to close off our equal_to_four method, that end was not found.
