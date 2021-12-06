require 'pry'

WINNING_MOVES = {
  'rock' => ['scissors','lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors']
}

MAX_TURNS = 3

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

def get_user_choice
  prompt("Choose your weapon!: 'R'(rock), 'P'(paper), 'S'(scissors), 'L'(Lizard), 'SP'(spock)")
  choice = user_choice?(gets.chomp.downcase)
  is_valid_choice = WINNING_MOVES.keys.include?(choice)
  
  if !is_valid_choice
      prompt("That's not a valid choice!")
      return get_user_choice
  end
  choice
end

def is_player_win?(player_choice, computer_choice)
  WINNING_MOVES[player_choice].include?(computer_choice)
end

def is_computer_win?(player_choice, computer_choice)
  WINNING_MOVES[computer_choice].include?(player_choice)
end

def is_finished?(player_score, computer_score)
  player_score == MAX_TURNS || computer_score == MAX_TURNS
end

def play(your_score, computer_score)
  choice = get_user_choice
  computer_choice = WINNING_MOVES.keys.sample
  prompt("You chose #{choice}. The computer chose #{computer_choice}.")
  
  if is_player_win?(choice, computer_choice)
    your_score += 1
    puts "Yeah!" unless your_score == MAX_TURNS
    puts "You Win!"
  elsif is_computer_win?(choice, computer_choice)
    computer_score += 1
    puts "boo!" unless computer_score == MAX_TURNS
    puts "Computer wins!"
  else
    prompt("Tie!")
    puts "It's a tie!"
  end

  puts "you #{your_score} -- CPU #{computer_score}"
  
  if is_finished?(your_score, computer_score)
    prompt("Do you want to play again? ('Y' if yes or any other key to exit.)")
    answer = gets.chomp
    
    if answer.downcase.start_with?('y')
      clear_screen
      play(0, 0)
    end
  else
    play(your_score, computer_score)
  end
end
binding.pry
def main
  clear_screen
  welcome_message
  play(0, 0)
  prompt("Thanks for playing!")
end

main