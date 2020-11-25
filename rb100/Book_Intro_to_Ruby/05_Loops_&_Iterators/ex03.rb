=begin
Write a method that counts down to zero using recursion.
=end


=begin
def countdown(num)
  while loop do
    puts num
    num = num - 1
  end
  countdown(num)

  if num == 10
    break
  end
end

countdown(10
=end
# incomplete
#----------------------------------------------------------------------------
puts "-------------------------------"

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(-3)
count_to_zero(15)
