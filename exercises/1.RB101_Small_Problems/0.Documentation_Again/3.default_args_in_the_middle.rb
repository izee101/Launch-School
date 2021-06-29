# Consider the following method and a call to that method:
# Use the ruby documentation to determine what this code will print.

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

#=> [4,5,6]