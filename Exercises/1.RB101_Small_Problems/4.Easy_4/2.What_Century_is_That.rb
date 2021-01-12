=begin

#Problem: What Century is That?
  Write a method that takes a year as input and returns the century.
  The return value should be a string that begins with the century number,
  and ends with st, nd, rd, or th as appropriate for that number.

  New centuries begin in years that end with 01.
  So, the years 1901-2000 comprise the 20th century.

  Explicit requirements
    Input:
      -integer
    Output:
      -string
    Rules: return value
      -string begins with century number
      -string ends with [st, nd, rd, or th] as appropriate
      -new centuries begin in years that end with 01 (1901-2000) == 20th century

  Implicit requirements:
    -the century suffix has to dynamically change
    -there are special cases (11th, 12th, 13th)
    -centuries are year ranges + suffix

  Questions:
    -how to calculate the century?
    -are there any special cases? = YES

#Examples / Test Cases:

  century(2000) == '20th'
  century(2001) == '21st'
  century(1965) == '20th'
  century(256) == '3rd'
  century(5) == '1st'
  century(10103) == '102nd'
  century(1052) == '11th'
  century(1127) == '12th'
  century(11201) == '113th'

#Data Structures
  Possible methods:
    -
  Possible structures:
    -array

#Algorithm
   -get century number
    -define century method with parameter year
    -init local var century assigned to result of century calculation
    -convert century to string
    -apply century suffix
        -define century_suffix method with parameter century
        -return logic for handling 11, 12, 13
        -find last digit of century
        -apply case statement based on last digit

   => expected return: 'century number + dynamic suffix'
   => expected output: none

=end

#Code Implementation
def century(year)
  century = (year / 100) + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'