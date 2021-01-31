=begin

#Problem: Staggered Caps (Part 2)
  Modify the method from the previous exercise so it ignores non-alphabetic characters when
  determining whether it should uppercase or lowercase each letter. The non-alphabetic
  characters should still be included in the return value; they just don't count when toggling
  the desired case.

  Explicit requirements
    Input:
      -
    Output:
      -
    Rules:
      -

  Implicit requirements:
    -

  Questions:
    -

#Examples / Test Cases:

  staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
  staggered_case('ALL CAPS') == 'AlL cApS'
  staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#Data Structures
  Possible methods:
    -
  Possible structures:
    -

#Algorithm
  -

   => expected return:
   => expected output:

=end

#Code Implementation

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'