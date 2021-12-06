WINNING_MOVES = {'rock' => ['scissors','lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors']}

VALID_CHOICES = WINNING_MOVES.keys

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def welcome_message
  welcome = <<~MSG
  Welcome to Rock, Paper Scissors,Lizard,Spock!
  --------------------------------------------
  The rules are very simple:

  Scissors cuts Paper cover Rock crushes
  Lizard poison Spock smashes Scissors
  decapitates Lizard eats Paper disproves
  Spock vaporizes Rock crushes Scissors.
  -------------------------------------------- 
  MSG

  prompt(welcome)
end

def winner?(key, value)
  if WINNING_MOVES[key].include?(value)
    prompt("You Win!")
  elsif WINNING_MOVES[value].include?(key)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")  
  end
end 

def weapon_choice
  
end

def user_choice?(input)
  case input
  when 'r'
    return 'rock'
  when  'p'
    return 'paper'
  when  's'
    return 'scissors'
  when 'l'
    return 'lizard'
  when 'sp'
    return 'spock'
  end

input
end

def valid_choice?(weapon)
  
end

clear_screen
welcome_message
loop do 
  your_score = 0
  computer_score = 0 
  loop do

    choice = ''
    loop do
      prompt("Choose your weapon!: 'R'(rock), 'P'(paper), 'S'(scissors), 'L'(Lizard), 'SP'(spock)")
      choice = gets.chomp.downcase
      choice = user_choice?(choice)
      
      
      break if VALID_CHOICES.include?(choice) 
      prompt("That's not a valid choice!")     
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice}. The computer chose #{computer_choice}.")

    if WINNING_MOVES[choice].include?(computer_choice)
      your_score += 1 
      puts "yeah!" unless your_score == 3 
    elsif WINNING_MOVES[computer_choice].include?(choice)
      computer_score += 1 
      puts "Boo!" unless computer_score == 3
    else
      prompt("TIE!")
    end
      
    winner?(choice, computer_choice)

    prompt("You #{your_score} -- CPU #{computer_score}")

    break if your_score == 3 || computer_score == 3
  end 

    prompt("Do you want to play again? ('Y' if yes or any other key to exit.)")
    answer = gets.chomp

    break unless answer.downcase.start_with?('y')
  
end   

prompt("Thanks for playing! Good bye cole!")