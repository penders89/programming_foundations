require 'pry'

SUITS = %w(C D H S)
VALUES = (2..10).to_a.map!(&:to_s) + ['J', 'Q', 'K', 'A']

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []
  VALUES.each do |suit|
    SUITS.each do |value|
      deck.push([suit, value])
    end
  end
  deck
end

def deal_card(deck)
  deck.shuffle.pop
end

def display_hand(hand)
  displayed_hand = "#{hand[0][0]}#{hand[0][1]}"
  hand.each_with_index do |card, idx|
    displayed_hand += " #{card[0]}#{card[1]}" unless idx == 0
  end
  displayed_hand
end

def display_card(card)
  "#{card[0]}#{card[1]}"
end
  
  

def calculate_value(hand)
  total = 0
  hand.each do |card|
    total += card[0].to_i if (1..10).include?(card[0].to_i)
    total += 10 if ['J', 'Q', 'K'].include?(card[0])
    total += 11 if card[0] == 'A' 
  end
  
  hand.select { |card| card[0] == 'A' }.count.times do
    total -= 10 if total > 21
  end
  
  total
end

def busted?(hand)
  calculate_value(hand) > 21
end

def computer_win?(player_hand, computer_hand)
  busted?(player_hand) || 
  !busted?(computer_hand) &&
  (calculate_value(player_hand) <= calculate_value(computer_hand))
end
  

deck = initialize_deck
player_hand = []
computer_hand = []

2.times do
  player_hand.push(deal_card(deck))
  computer_hand.push(deal_card(deck))
end

loop do
  prompt "Your current hand is #{display_hand(player_hand)}"
  prompt "Your current score is #{calculate_value(player_hand)}"
  prompt "Dealer is showing #{display_card(computer_hand[0])}"
  prompt "Would you like to Hit or Stay?"

  input =''
  loop do 
    input = gets.chomp
    break if input.downcase.start_with?('s','h')
    prompt "Sorry, I don't understand. Would you like to Hit or Stay?"
  end
  
  if input.downcase.start_with?('s')
    prompt "You stayed on #{calculate_value(player_hand)}\n\n"
    break
  end
  
  new_card = deal_card(deck)
  
  prompt "You got the #{display_card(new_card)}"
  player_hand.push(new_card)
  
  if busted?(player_hand)
    prompt "Sorry, you busted.\n\n"
    break
  end
end
  
loop do
  prompt "Computer has #{display_hand(computer_hand)}"
  prompt "Computer's current score is #{calculate_value(computer_hand)}"
  
  if calculate_value(computer_hand) >= 17
    prompt "Computer stays on #{calculate_value(computer_hand)} (17 or over)\n\n"
    break
  end
  
  new_card = deal_card(deck)
  
  prompt "Computer got the #{display_card(new_card)}"
  computer_hand.push(new_card)
  
  if busted?(computer_hand)
    prompt "Computer busted\n\n"
    break
  end
end

if computer_win?(player_hand, computer_hand)
  prompt "Computer WINS!"
else
  prompt "Player WINS!"
end

