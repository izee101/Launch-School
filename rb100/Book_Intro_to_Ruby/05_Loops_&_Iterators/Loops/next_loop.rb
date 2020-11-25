#conditional_loop.rb

i = 0
loop do
  i += 2
  if i == 4
    next               # skip the rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end



=begin
# output
2
6                       # 4 was skipped over
8
10
=end
