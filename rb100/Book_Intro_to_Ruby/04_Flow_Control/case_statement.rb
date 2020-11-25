#case_statement.rb

=begin
# if_statement.rb
a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
=end

# case_statement.rb
a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#Note: we only need to specify the variable we want to test once (as the argument to case) and we don't specify a == on the individual when statements like in the if statement.

# case_statement.rb <-- refractored to save result in a variable:

a = 5

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer 
