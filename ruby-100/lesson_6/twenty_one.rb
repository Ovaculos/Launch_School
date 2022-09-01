SUITS = %w(H D C S)
CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def initialize_deck(num_of_decks)
  result_deck = []
  num_of_decks.times do
    SUITS.each do |suit|
      CARD_VALUES.each do |value|
        result_deck << [suit, value]
      end
    end
  end

  result_deck
end

def deal_cards(deal_to_each, master_deck, players, dealers)
  deal_to_each.times do
    players << master_deck.shuffle!.pop
    dealers << master_deck.shuffle!.pop
  end
end

def draw_card(deck, master_deck)
  deck << master_deck.shuffle!.pop
end

def print_hand_and_total(deck, char)
  current_cards = []
  deck.each do |card|
    current_cards << case card[1]
                     when 'J' then 'Jack'
                     when 'Q' then 'Queen'
                     when 'K' then 'King'
                     when 'A' then 'Ace'
                     else card[1]
                     end
  end

  case char
  when 'player' then puts "Your cards are: #{current_cards}, which runs a total of #{total(deck)}."
  when 'dealer' then puts "The dealer's cards are #{current_cards}, which runs a total of #{total(deck)}."
  end
end

def total(deck)
  total = 0
  values = deck.map { |card| card[1] }

  values.each do |value|
    total += if value == 'A'
               11
             elsif value.to_i == 0
               10
             else
               value.to_i
             end
  end

  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > 21
  end

  total
end

def busted?(deck)
  total(deck) > 21
end

def winner(player_hand, dealer_hand)
  case total(player_hand) <=> total(dealer_hand)
  when -1 then puts('You lost.')
  when 0 then puts('You tied.')
  when 1 then puts('You won!')
  end
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y / n)?"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

player_hand = []
dealer_hand = []

deck = initialize_deck(1)

deal_cards(2, deck, player_hand, dealer_hand)

puts 'Hi, welcome to 21!'

loop do
  # Player turn

  loop do
    puts('-------------------------------------------------------------------')
    print_hand_and_total(player_hand, 'player')
    puts 'Hit or Stay?'
    answer = gets.chomp.downcase
    break if answer == 'stay' || busted?(player_hand)
    draw_card(player_hand, deck) if answer == 'hit'
    break if answer == 'stay' || busted?(player_hand)
  end

  if busted?(player_hand)
    print_hand_and_total(player_hand, 'player')
    puts('You busted and lost...')
    break
  else
    puts("Dealer's turn...")
  end

  # Dealer turn

  loop do
    sleep(1)
    print_hand_and_total(dealer_hand, 'dealer')
    break if total(dealer_hand) >= 17
    draw_card(dealer_hand, deck)
  end

  if busted?(dealer_hand)
    puts('The dealer busted and you win!')
    break
  else
    puts("Your total was #{total(player_hand)}, and the dealer's total was #{total(dealer_hand)}.")
    winner(player_hand, dealer_hand)
  end

end

puts('Game over.')
