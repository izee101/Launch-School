=begin
Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.
=end

(32 * 4) >= "129"
# ERROR, ArgumentError cannot compare integer with string

847 == '874'
# FALSE

'847' < '846'
# FALSE

'847' > '846'
# TRUE

'847' > '8478'
# FALSE

'847' < '8478'
# TRUE
#----------------------------------------------------------------------------
puts "-------------------------------"

Raises an error
false
false
true
false
true
