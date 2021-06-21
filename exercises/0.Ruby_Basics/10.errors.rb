# Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x


=begin
What does x print to the screen in each case?
  -case 1: x prints "3"
  -case 2: x prints "3"
Do they both give errors?
  -No, only the second program
Are the errors different?
Why?
  - The second throws an error undefined local variable or method because x is not available
  as it is created within the scope of the do/end block.
=end
