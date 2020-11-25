# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi my name is #{name}"
  else
    puts "Hi my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
# greeting("Bob", {age: 62, city: "New York City"})     ---->    refractored
greeting("Bob", age: 62, city: "New York City")

# the curly braces are not required when a has is the last argument. Common convention in Rails code.
