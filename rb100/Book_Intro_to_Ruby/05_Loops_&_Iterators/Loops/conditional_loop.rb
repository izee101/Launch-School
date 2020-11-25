#conditional_loop.rb

i = 0
loop do
  i += 2
  puts i
  if i == 10
    break
  end         #this will cause execution to exit the loop
end



=begin
# output
2
4
6
8
10
=end
