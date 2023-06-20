class GuessingGame
  def initialize(low_range, high_range)
    @number_range = (low_range..high_range)
    @max_guesses = Math.log2(high_range - low_range).to_i + 1
  end

  def play
    welcome_to_game
    init_parameters
    guessing_sequence
    display_winner
  end

  private

  def welcome_to_game
    puts 'Welcome to the number guessing game!'
  end

  def init_parameters
    @remaining_guesses = @max_guesses
    @answer = @number_range.to_a.sample
    @player_guess = nil
  end

  def guessing_sequence
    loop do 
      puts "You have #{@remaining_guesses} guesses left."
      break if @remaining_guesses <= 0

      loop do 
        puts "Enter a number between #{@number_range.min} and #{@number_range.max}"
        @player_guess = gets.chomp.to_i
        break if @number_range.include?(@player_guess)
        puts "Invalid input."
      end

      case @player_guess <=> @answer
      when -1 then puts 'Your guess was too low.'
      when 0 then break
      when 1 then puts 'Your guess was too high.'
      end

      @remaining_guesses -= 1
    end
  end

  def display_winner
    @answer == @player_guess ? puts("You won, the answer was #{@answer}!") : puts("You've got no more guesses. You lost...")
  end
end

game = GuessingGame.new(501, 1500)
game.play