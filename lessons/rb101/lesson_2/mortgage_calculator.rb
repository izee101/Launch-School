

def prompt(message)
  puts("=> #{message}")
end


def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def number?(num)
  integer?(num) || float?(num)
end


prompt("Welcome to the Mortgage Calculator!")
prompt("Please enter your name:")
name = ''
loop do
  name = gets.chomp

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop

  loan_amount = ''
  loop do
    print("=> What is your total loan amount? (in whole dollars): $")
    loan_amount = gets.chomp
    if number?(loan_amount)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
      # add comma recognition
  conv_rate = ''
  loop do
    prompt("What is your Annual Percentage Rate (APR)?")
    prompt("Example: enter '5' for '5%' interest")
    conv_rate = gets.chomp
    if number?(conv_rate)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  monthly_int_rate = (conv_rate.to_f / 12)

  loan_duration_months = ''
  loop do
    prompt("How long will you have this loan? (months)")
    prompt("Example: enter '12' for '12 months'")
    loan_duration_months = gets.chomp
    if number?(loan_duration_months)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
      # add option to to enter years instead

  prompt("Thank you for that information!")
  prompt("One moment, I'm calculating your monthly payment...")



  p = loan_amount
  j = monthly_int_rate
  n = loan_duration_months

  m = p.to_f * (j / (1 - (1 + j.to_f)**(-n)))

  prompt("Your monthly payment will be $#{m}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using calculator. Good bye!")
