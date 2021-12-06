def rps(fist1,fist2)
  if fist1 == 'rock'
    (fist2 == 'paper') ? 'paper' : 'rock'
  elsif fist1 == 'paper'
    (fist2 == 'scissors') ? 'scissors' : 'paper'
  else
    (fist2 == 'rock') ? 'rock' : 'scissors'
  end 
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# what is the result of the followinf call?

#NOTE: I still have problems understanding well the implementation of ternary operators. 

