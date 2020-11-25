# conditional_while_loop_with_next.rb

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end


# output
1
5         # 3 gets skipped from the odd sequence because it got changed to a 4
7         # by the if statement.
9
