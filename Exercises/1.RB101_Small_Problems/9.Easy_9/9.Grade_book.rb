=begin

#Problem: Grade book
  Write a method that determines the mean (average) of the three scores passed to
  it, and returns the letter value associated with that grade.
      Numerical Score Letter	Grade
          90 <= score <= 100	'A'
          80 <= score < 90	  'B'
          70 <= score < 80	  'C'
          60 <= score < 70	  'D'
          0 <= score < 60	    'F'
  Tested values are all between 0 and 100.
  There is no need to check for negative values or values greater than 100.

  Explicit requirements
    Input:
      - 3 integers between 0 - 100
    Output:
      - string
    Rules:
      -calculate average of the 3 scores
      -return associated letter value

  Implicit requirements:
    -valid values are from 0 - 100

  Questions:
    -

#Examples / Test Cases:

  get_grade(95, 90, 93) == "A"
  get_grade(50, 50, 95) == "D"

#Data Structures
  Possible methods:
    -
  Possible structures:
    -array
    -hash

#Algorithm
  -define method with parameters (score1, score2, score3)
  -calculate average of scores
  -create case statement
  -return grade

   => expected return: string
   => expected output: none

=end

#Code Implementation

def get_grade (grade1, grade2, grade3)
  score = (grade1 + grade2  + grade3) / 3
  case score
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"