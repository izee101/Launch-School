=begin
Why does the following code...
Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'
=end


def execute(block)                # should be (&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# an ampersand is missing before the parameter "block". The error is thrown because block is not recognized.

#----------------------------------------------------------------------------

# The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.
