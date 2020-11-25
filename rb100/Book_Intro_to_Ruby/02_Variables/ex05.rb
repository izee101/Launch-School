=begin
Look at the following programs...
What does x print to the screen in each case?
Do they both give errors?
Are the errors different?
Why?
=end

#PROGRAM 1

x = 0
3.times do
  x += 1
end
puts x



#PROGRAM 2

y = 0
3.times do
  y += 1
  x = y
end
puts x


=begin

What does x print to the screen in each case?
-- In program 1, x prints the value "3"
-- In program 2, it throws a NameError for x being an undefined local variable or method

Do they both give errors?
-- No, only program 2

Are the errors different?
-- Only one program triggers an error

Why?
-- Due to variable scope. The outer scope of "puts" cannot access variable "x" since it is initialized with an inner scope.

=end
#----------------------------------------------------------------------------
puts "-------------------------------"

puts "Book Solution"

=begin
--The first prints 3 to the screen.
--The second throws an error undefined local variable or method because x is not available as it is created within the scope of the do/end block.
=end
