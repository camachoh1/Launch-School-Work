
# def joinor(arr, delimiter= ',', word= 'or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     "#{arr[0..-2].join(delimiter)}#{delimiter} #{word} #{arr[-1]}"  
#   end
# end    

# p joinor([1,2,3])

# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

# p joinor([1,2,3])

# computer AI defense: 

# the computer currently picks a square at random. Lets make the computer defensive minded, so that if there is an immediate threat, then it will defend the 3rd square. We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row. If there is no immediate threat, then it will just pick a random square.

# in order to make this method work, we need to base our method on the WINNING_LINES constant. In order to see wether the player is about to win. In other words we need to iterate through WINNING_LINES and look for any lines that have 2 of their values marked by the player. 

# in order to do that, we need to create a method that iterates through the board and the WINNING_LINES constant, this is the method created by LS:

def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

# Here we can see the method receives two arguments 'lines' which represents WINNING_LINES and 'board' which represents the board. 

# on the first line, we see a conditional that applies the method values_at(*line). Note that the splat operation essentially "explodes" the line array into a comma-separated list. We have to use the splat operator because the values_at method doesn't take an array, but does take a comma-separated list of arguments. The splat operator (*) does this for us. 

# The return value of board.values_at(*line) is ["X", "X", " "] if the player has selected 2 spaces already. We then chain the return value of values_at(*line) to .count("X")     (the argument here represents player choice) to count and return a numeric value that represent the number of times "X" appears in the return value of board.values_at(*line). we then check wether that number is equals to 2. if it does equals to 2, 

# we look into the board and select a line whose value is empty. We do that by using a selection method in this case, select. to look through the board and select a line that includes a key (keys in this case represent positions on the board) and a value of " ". 

# the code for this process looks something like this: board.select{ |k,v| line.include?(k) && v == " "} note that the block variables |k,v| represent keys and values on the board hash {1 => " " or 1 => "X"} this is also how the return value of this method would look like. We than chain #keys to the return value of select in order to show the keys only and #first to make sure it is the first value returned by select.

# to complete the conditional we pass nil if the first condition is not met. 

# Once we make sure this method works, we need to modify our computer_places_piece! method like this: 

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line,brd)
    break if square
  end
  
  if !square
    square = empty_squares(brd).sample
  end
  
  brd[square] = COMPUTER_MARKER
end

# Here we first set the value of square to nil in order to represent an empty space on the board. 

#we then iterate through WINNING_LINES and set the value of square to the return value of our method find_at_risk_square. 

# if square, (meaning if find_at_rist_square) returns an empty space that its preceded by two player choices, we break out of this iteration. 

# if !square, (meaning if square does not equate to the return value of find_at_risk_square.) (not an empty space preceded by two player choices) then the value of square is empty_squeare(brd).sample whch picks a random empty space from the board. 

# finally, we assign COMPUTER_MARKER to our board using brd[square] = COMPUTER_MARKER. 