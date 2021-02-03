require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

#require 'erb'
#MESSAGES = YAML.load(ERB.new("calculator_messages.yml.erb").result)


def prompt(message)
  Kernel.puts("=> #{message}")
end

=begin --> Better integer validation
def valid_number?(num)
  # num.to_i() != 0
end
=end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def number?(input)
  integer?(input) || float?(input)
end


def operation_to_message(op)
  word = case op
         when '1'
          'Adding'
         when '2'
          'Subtracting'
         when '3'
          'Multiplying'
         when '4'
          'Dividing'
         end
  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt(MESSAGES['named_greeting'])

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['ask_first_num'])
    number1 = Kernel.gets().chomp()

    if number?(number1)                   # updated validation
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['ask_second_num'])
    number2 = Kernel.gets().chomp()

    if number?(number2)                   # updated validation
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end

=begin
  operator_prompt = <<-MSG
    What operation would you like to perfom?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
=end
  prompt(MESSAGES['select_operator'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid operator'])
    end
  end

  prompt(MESSAGES['status_update'])

  result = case operator
  when '1'
             number1.to_f() + number2.to_f()    # updated to float for accuracy
           when '2'
             number1.to_f() - number2.to_f()    # updated to float for accuracy
           when '3'
             number1.to_f() * number2.to_f()    # updated to float for accuracy
           when '4'
             number1.to_f() / number2.to_f()
           end
           # still need to format answers that end in zero "8.0 = 8, 9.0 = 9"
  prompt(MESSAGES['solution'] )

  prompt(MESSAGES['perform_again'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
