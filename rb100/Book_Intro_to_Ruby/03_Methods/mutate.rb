#mutate.rb 

a = [1,2,3]

# Exampple of a method definition that modifies its argument permanently

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

puts "-------------------------"

b = [1,2,3]
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{b}"
no_mutate(b)
p "After no_mutate method: #{b}"
