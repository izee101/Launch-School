VALID_CHOICES = %w(rock paper scissors lizard spock r p sc l sp)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  win = {
    'rock': %w(scissors lizard),
    'paper': %w(rock spock),
    'scissors': %w(paper lizard),
    'lizard': %w(spock paper),
    'spock': %w(scissors rock),
    'r': %w(sc l),
    'p': %w(r sp),
    'sc': %w(p l),
    'l': %w(sp p),
    'sp': %w(sc r)
  }
  win[first.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

choice_prompt = <<-MSG
  Choose one:
  --> rock or "r"
  --> paper or "p"
  --> scissors or "sc"
  --> lizard or "l"
  --> spock or "sp"
MSG

loop do
  choice = ''
  loop do
    puts choice_prompt
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
