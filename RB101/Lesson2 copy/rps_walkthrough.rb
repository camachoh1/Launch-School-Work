VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  puts "=> #{message}"
end  

def win?(first, second)
  (first == "paper" && second == "rock") || (first == "rock" && second == "scissors") || (first == "scissors" && second == "paper")||
  (first == "rock" && second == "lizard")||
  (first == 'lizard' && second == 'spock')||
  (first == 'spock' && second == 'scissors')||
  (first == 'scissors' && second == 'lizard')||
  (first == 'lizard' && second == 'paper')||
  (first == 'paper' && second == 'spock')||
  (first == 'spock' && second == 'rock')
end

def display_choices(computer, user)
  if win?(user, computer)
    prompt("You win!") 
  elsif win?(computer, user)
    prompt("Computer won!") 
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("choose one: #{VALID_CHOICES.join(', ')}")
    prompt("R(rock), P(paper), S(scissors), L(lizard), SP(spock)")
    choice = gets.chomp.downcase 

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Thats not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}. The computer chose #{computer_choice}.")

  display_choices(computer_choice, choice)

  prompt("Do you want to play again? ('Y' if yes or any other key to exit.)")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for playing! Good bye cole!")
