=begin
Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
=end

(32 * 4) >= 129
  #128   >= 129
#ans:False --CORRECT

false != !true
# false != false
#ans: False --CORRECT

true == 4
#Boolean is not equal to integer
#ans: False --CORRECT

false == (847 == '874')
# false == false (string not equal to integer)
#ans: True --CORRECT

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
               #!20 == 20             82 == 82
                   #false     ||       true
  #false ||                  true
                #true                               || false
                                  #true

#ans: TRUE --CORRECT! However, I could have just evaluated from left to right and stopped at the first "true" value, just like Ruby would.


#----------------------------------------------------------------------------
puts "-------------------------------"

false
false
false
true
true
