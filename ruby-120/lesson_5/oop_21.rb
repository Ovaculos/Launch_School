# frozen_string_literal: true

module Hand
  def show_hand
    puts "#{self.class}'s hand:"
    puts '--------------------'
    cards.each do |card|
      puts card
    end
    puts "Total value of #{total}"
    puts '--------------------'
  end

  def value
    value = 0

    cards.each do |card|
      value += case card.face
               when 'A'
                 11
               when 'K', 'Q', 'J'
                 10
               else
                 card.face.to_i
               end
    end

    cards.each { |card| card.face.count('A').times { value -= 10 if value > 21 } }

    value
  end
end

class Card
  FACES = %w[A 2 3 4 5 6 7 8 9 10 J Q K].freeze
  SUITS = %w[H D S C].freeze

  attr_reader :face, :suit

  def initialize(face, suit)
    @face = face
    @suit = suit
  end

  def to_s
    "A #{face} of #{suit}."
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = make_deck
    @cards.shuffle!
  end

  def draw_cards(amount)
    @cards.pop(amount)
  end

  def deal_one
    @cards.pop
  end

  private

  def make_deck
    deck = []
    Card::SUITS.each { |suit| Card::FACES.each { |face| deck << Card.new(face, suit) } }
    deck
  end
end

class Participant
  attr_accessor :cards

  include Hand

  def initialize
    @cards = []
  end

  def total
    value
  end

  def busted?
    value > 21
  end
end

class Player < Participant
end

class Dealer < Participant
end

class TwentyOneGame
  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def play
    display_welcome_message
    loop do
      deal_initial_cards
      player_turn
      dealer_turn unless @player.busted?
      display_result
      break unless play_again?

      clear
      reset
    end
    display_goodbye_message
  end

  private

  def clear
    system 'clear'
  end

  def display_welcome_message
    clear
    puts 'Welcome to Twenty One!'
    puts '----------------------'
  end

  def display_goodbye_message
    clear
    puts 'Thanks for playing. Have a good one'
  end

  def deal_initial_cards
    @deck.draw_cards(2).each { |card| @player.cards << card }
    @deck.draw_cards(2).each { |card| @dealer.cards << card }
  end

  def show_inital_hands
    @player.show_hand
    @dealer.show_hand
  end

  def player_turn
    loop do
      decision = nil
      @player.show_hand
      puts "Would you like to hit or stay? ('h' or 's')"

      loop do
        decision = gets.chomp.downcase
        break if %w[h s].include?(decision)

        puts "Your decision must be 'h' or 's'. Please choose one."
      end

      clear
      case decision
      when 's'
        puts 'You stay.'
        break
      when 'h'
        puts 'You hit.'
        @player.cards << @deck.deal_one
      end

      break if @player.total >= 21
    end
  end

  def dealer_turn
    sleep(0.8)
    @dealer.show_hand
    until @dealer.total >= 17
      sleep(1)
      @dealer.cards << @deck.deal_one
      sleep(1)
      @dealer.show_hand
    end
  end

  def display_result
    if @player.busted?
      puts "You've busted and lost..."
    elsif @dealer.busted?
      puts 'The dealer busted and you win!'
    elsif @player.total < @dealer.total
      puts "The dealer had a total of #{@dealer.total}, and you only had a total of #{@player.total}. You lost..."
    elsif @player.total == @dealer.total
      puts "You've tied... You and the dealer had a total of #{@player.total}."
    else
      puts "You've won! Your #{@player.total} beat the dealer's #{@dealer.total}!"
    end
  end

  def play_again?
    puts 'Would you like to play again?'
    answer = gets.chomp.downcase
    return false if answer.start_with?('n')

    true
  end

  def reset
    @player.cards = []
    @dealer.cards = []
    @deck = Deck.new
  end
end

game = TwentyOneGame.new

game.play
