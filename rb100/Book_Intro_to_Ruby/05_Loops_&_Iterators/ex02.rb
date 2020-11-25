=begin
Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
=end

puts "Please enter any command"
puts "Type 'STOP' to end program"
x = gets.chomp

while x != "STOP"
  puts  "your command was recieved"
  x = gets.chomp
end

# wow it actually works?


#----------------------------------------------------------------------------
puts "-------------------------------"


x = ""                                   # starts with empty string
while x != "STOP" do                     # do/while loop
  puts "Hi, How are you feeling?"        # do something
  ans = gets.chomp                       # user input
  puts "Want me to ask you again?"       # do something
  x = gets.chomp                         # continued user input
end

# refractored after studying answer


x = ""

while x != "STOP" do
  puts  "Would you like to enter a command?"
  ans = gets.chomp
  puts "Thanks for the command, want to enter another one?"
  x = gets.chomp
end
