# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

VALUES  = [ "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
SUITS = [ "Hearts", "Spades", "Clubs", "diamonds" ]

def initialize_deck
  VALUES.product(SUITS)
end 

def prompt(msg)
  puts "=> #{msg}"
end

def welcome
  prompt("Lets play 21!")
  prompt("Press enter to continue")
  gets.chomp
  system 'clear'
end 

def deal_cards(deck)
  deck.sample(2)
end

def total(cards)
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end
  
  values.select { |value| value == "A" }.count.times do 
    sum -= 10 if sum > 21
  end
  
  sum
end

def busted?(total)
  total > 21
end

def display_player_hand(player_hand)
  puts "---------------------------"
  prompt("You have:")
  player_hand.each do |card|
    prompt( "#{card[0]} of #{card[1]}")
  end
  puts "---------------------------"
end

def display_dealer_hand(dealer_hand)
  puts "---------------------------"
  prompt("Dealer has:")
  dealer_hand.each do |card|
    prompt( "#{card[0]} of #{card[1]}")
  end
  puts "---------------------------"
end




system 'clear'

welcome

deck = initialize_deck
player_hand = deal_cards(deck)
dealer_hand = deal_cards(deck)

prompt("Dealer has:")
prompt "#{dealer_hand[0][0]} of #{dealer_hand[0][1]} and unknown card"

display_player_hand(player_hand)

loop do 
  answer = nil
  loop do
    prompt("would you like to (H)it or (S)tay?")
    answer = gets.chomp.downcase
    break if %w(h s).include?(answer)
    prompt("Invalid input. Please select 'H' or 'S' to continue.")
  end   
  if answer == 'h'

    player_hand << deck.sample
    display_player_hand(player_hand)
    prompt("your current total is #{total(player_hand)}")
  end

  break if answer == 's' || busted?(total(player_hand))
end

system 'clear'

if busted?(total(player_hand))
  prompt("You busted!")
  prompt("Dealer wins!")
  prompt("Your total: #{total(player_hand)}")
else
  prompt("You stayed at: #{total(player_hand)}")
end

loop do
  break if total(dealer_hand) >= 17

  prompt("dealer hits!")
  dealer_hand << deck.sample
  display_dealer_hand(dealer_hand)
  prompt("Dealer's total: #{total(dealer_hand)}")
end

if busted?(total(dealer_hand))
  prompt("Dealer busted!")
  prompt("You win!")
  prompt("Dealer's total: #{total(dealer_hand)}")
else
  prompt("Dealer stays at: #{total(dealer_hand)}")
end    









