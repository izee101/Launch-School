=begin
What will the following program print to the screen?

What will it return?
=end


def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!"}

# Nothing prints to screen, .call was not used to activate the block

# a Proc object is returned


#----------------------------------------------------------------------------
puts "-------------------------------"


# Nothing is printed to the screen because the block is never activated with the .call method.

# The method returns a Proc object.
