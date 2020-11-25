=begin

# Odd
def is_odd?(param)
 param % 2 != 0
end


puts is_odd?(2)    # => false

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# -----------------------------------------
# List of Digits

def digit_list(param)
  arr = param.to_s.split('')
  arr.map { |x| x.to_i }
end



puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=end

# How Many?

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count = 0
occurrences = Hash.new(0)


def count_occurrences(vehicles)
  loop do
    occurrences[vehicles.shift] += 1
    break if vehicles.size == 0
  end
end
