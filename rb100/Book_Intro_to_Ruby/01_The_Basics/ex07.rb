=begin
What does the following error message tell you?

SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'

=end

puts "My Solution"

puts "It tells my that there is an error in the syntax on line 2."
puts "There is an unexpected closing parenthesis ')' where a closing curly brace '}' was expected "


#----------------------------------------------------------------------------
puts "-------------------------------"
puts "Book Solution"

puts "There is an opening bracket somewhere in the program without a closing bracket following it. It may have happened when creating a hash."
