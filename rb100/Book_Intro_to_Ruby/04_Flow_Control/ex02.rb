=begin
Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
=end


=begin
def caps_str_longer_than_10(string)
  if string.length {|x| x > 10}
     puts string.upcase

  else
    puts "Your string is not longer than 10 characters"
  end
end

puts caps_str_longer_than_10("hi world")
puts caps_str_longer_than_10("Hello World")
=end

=begin
 #made it too complicated!
 --method name and parameter were ok
 --if statement "string.length > 10" was initially correct, but then changed to a block upon unrelated error.
 --correct method was used to change string to UPPERCASE. However, I did use .capitalize by mistake the first time.
 --"puts string.upcase!"  changed all output to caps, instead of those only defined by the .length method invoked earlier
 --else did not need to have a message.
=end

#corrected code after reviewing answer

def caps_str_longer_than_10(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps_str_longer_than_10("hi world")
puts caps_str_longer_than_10("Hello World")
#----------------------------------------------------------------------------
puts "-------------------------------"

=begin
def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")
=end
