# doubler_recursion.rb

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

doubler(2)

#output
2
4
8
16

# returned all at once.
