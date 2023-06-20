# frozen_string_literal: true

class TTTGame
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # collums
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    player_mark = 'xx'
    puts "What's your name?"
    player_name = gets.chomp
    until player_mark.length == 1
      puts 'What would you like your marker to be? (Must be one character)'
      player_mark = gets.chomp
    end

    computer_mark = player_mark == 'O' ? 'X' : 'O'

    @human = Player.new(player_name, player_mark)
    @computer = Player.new(%w[Arnold Robocop].sample, computer_mark)
    @current_marker = @human.marker
  end

  def play
    clear
    display_welcome_message
    main_game
    display_goodbye_message
  end

  private

  def display_welcome_message
    puts 'Welcome to Tik Tac Toe'
    puts '----------------------'
  end

  def display_goodbye_message
    puts '-------------------------'
    puts 'Thanks for playing!'
  end

  def initialize_board
    @game_board = Board.new
  end

  def display_board
    puts "You are #{@human.marker} and the computer is #{@computer.marker}."
    @game_board.draw
  end

  def current_player_moves
    @current_marker == @human.marker ? human_moves! : computer_moves!
  end

  def human_moves!
    player_choice = nil
    loop do
      puts 'Which square would you like to mark?'
      player_choice = gets.chomp.to_i
      break if @game_board.state.values.include?(player_choice)

      puts 'You must chose a number 1 through 9, and it must be a blank square.'
    end
    @game_board.state[player_choice] = @human.marker
    @current_marker = @computer.marker
  end

  def computer_moves!
    available_squares = @game_board.state.values.select { |square| (1..9).include?(square) }
    @game_board.state[available_squares.sample] = @computer.marker
    @current_marker = @human.marker
  end

  def someone_won?
    !!winning_player
  end

  def winning_player
    WINNING_LINES.each do |line|
      return @human.name if @game_board.state.values_at(*line).count(@human.marker) == 3
      return @computer.name if @game_board.state.values_at(*line).count(@computer.marker) == 3
      return 'Noone' if @game_board.full?
    end
    nil
  end

  def move_sequence
    loop do
      display_board
      current_player_moves
      clear
      break if someone_won? || @game_board.full?
    end
  end

  def main_game
    loop do
      @current_marker = @human.marker
      initialize_board
      move_sequence
      display_result
      break unless play_again?

      clear
    end
  end

  def display_result
    puts "#{winning_player} won."
  end

  def play_again?
    puts 'Would you like to play again? (y/n)'
    answer = gets.chomp.downcase
    return true if answer.start_with?('y')

    false
  end

  def clear
    system 'clear'
  end
end

class Board
  attr_accessor :state

  def initialize
    @state = {}
    (1..9).each { |mark| @state[mark] = mark }
  end

  def to_s
    @state
  end

  def draw
    puts '-----------------'
    puts '     |     |'
    puts "  #{state[1]}  |  #{state[2]}  |  #{state[3]}  "
    puts '     |     |'
    puts '-----|-----|-----'
    puts '     |     |'
    puts "  #{state[4]}  |  #{state[5]}  |  #{state[6]}  "
    puts '     |     |'
    puts '-----|-----|-----'
    puts '     |     |'
    puts "  #{state[7]}  |  #{state[8]}  |  #{state[9]}  "
    puts '     |     |'
    puts '-----------------'
  end

  def full?
    state.values.none? { |square| (1..9).include?(square) }
  end
end

Player = Struct.new('Player', :name, :marker)

game = TTTGame.new

game.play
