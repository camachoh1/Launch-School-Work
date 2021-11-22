require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =
  [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
  [[1, 5, 9], [3, 5, 7]]
WINNING_SCORE = 5 

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter= ',', word= 'or')
  case arr.size
  when 0 then ' '
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    "#{arr[0..-2].join(delimiter)} #{word} #{arr[-1]}"
  end
end         

# rubocop:disable Metrics/MethodLength,  Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "You are a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "      |     |"
  puts "   #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "      |     |"
  puts " -----+-----+-----"
  puts "      |     |"
  puts "   #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "      |     |"
  puts " -----+-----+-----"
  puts "      |     |"
  puts "   #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "      |     |"
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def who_goes_first
  first_move = ''
  loop do 
    prompt("Please select who goes first")
    prompt("p: Player, c: Computer, r: Random")
    choice = gets.chomp.downcase

    case choice 
    when 'p' then first_move = PLAYER_MARKER
    when 'c' then first_move = COMPUTER_MARKER
    when 'r' then first_move = [PLAYER_MARKER, COMPUTER_MARKER].sample
    else 
      prompt("invalid input. Please try again.")
    end
    break if %w(p c r).include?(choice)
  end
  return first_move
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  #offence 
  WINNING_LINES.each do |line|
    square = computer_attack(line,brd)
    break if square
  end
  #defence
  if !square
    WINNING_LINES.each do |line|
      square = computer_defence(line,brd)
      break if square
    end 
  end 
  #pick center square 
  if !square && empty_squares(brd).include?(5)
      square = 5 
  end     
  #pick random square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end   

def computer_defence(line,brd)

  if brd.values_at(*line).count(PLAYER_MARKER) == 2
  brd.select{ |k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first 
  else 
    nil
  end
end

def computer_attack(line,brd)

  if brd.values_at(*line).count(COMPUTER_MARKER) == 2
  brd.select{ |k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first 
  else 
    nil
  end
end 

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # if brd[line[0]] == PLAYER_MARKER &&
    #    brd[line[1]] == PLAYER_MARKER &&
    #    brd[line[2]] == PLAYER_MARKER
    #   return 'Player'
    # elsif brd[line[0]] == COMPUTER_MARKER &&
    #       brd[line[1]] == COMPUTER_MARKER &&
    #       brd[line[2]] == COMPUTER_MARKER
    #   return "Computer"
    # end

    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def display_winner(win, winner)
  if win
    prompt "#{winner} won!"
  else
    prompt "it's a tie!"
  end
end   

def keep_score(winner, score)
  if winner == "Player"
    score["Player"] += 1
  elsif winner == "Computer"
    score["Computer"] += 1
  else 
    prompt("No one wins!")
  end
    score
end

def display_score(score)
  prompt("Your score #{score["Player"]} - Computer score #{score["Computer"]}")
end

def finished?(score)
  score["Player"] == WINNING_SCORE || score["Computer"] == WINNING_SCORE
end

def champion(score)
  if score["Player"] > score["Computer"]
    prompt("Congratulations! You are the ultimate champion!")
  elsif score["Computer"] < score["Player"]
    prompt("The computer is the ultimate champion!")
  end
end

loop do 

  score = {"Player" => 0, "Computer" => 0}
  
  loop do
    board = initialize_board
    first_move = who_goes_first
      loop do
          display_board(board)
          
          player_places_piece!(board)
          break if someone_won?(board) || board_full?(board)

          computer_places_piece!(board)
          break if someone_won?(board) || board_full?(board) 
      end
    
    display_board(board)
    display_winner(someone_won?(board), detect_winner(board))  
    keep_score(detect_winner(board), score)
    display_score(score)
    prompt("Press enter to continue")
    gets.chomp   
    
    if finished?(score)
      champion(score)
      break 
    end    
  end
        
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break if answer.downcase.start_with?('n') 
end

prompt "Thanks for playing! Good Bye!"