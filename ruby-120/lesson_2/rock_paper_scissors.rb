class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
    @move_history = Table.new
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      input_moves
      display_winner
      display_scores
      display_move_history
      break if human.score == 10 || computer.score == 10
    end
    display_goodbye_message
  end

  def display_move_history
    p @move_history.history
  end

  def input_moves
    @move_history.history << [human.choice, computer.choice]
  end

  def display_scores
    puts "#{human.name} has #{human.score} points."
    puts "#{computer.name} has #{computer.score} points."
  end

  def display_moves
    puts "#{human.name} chose #{human.choice}."
    puts "#{computer.name} chose #{computer.choice}."
  end

  def display_winner
    if human.choice > computer.choice
      puts "#{human.name} won!"
      human.score += 1
    elsif human.choice < computer.choice
      puts "#{computer.name} won..."
      computer.score += 1
    else
      puts "It's a tie."
    end
  end

  def display_welcome_message
    puts 'Welcome to Rock, Paper, Scissors'
  end

  def display_goodbye_message
    puts '------------------------------------'
    puts 'Thanks for playing. Have a good one.'
  end

  def play_again?
    answer = nil

    loop do
      puts 'Would you like to play again?'
      answer = gets.chomp.downcase
      break if answer.start_with?('y') || answer.start_with?('n')
      puts "That's not a valid answer. Choose 'y' or 'n'."
    end

    return true if answer.start_with?('y')
    false
  end
end

class Move
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def >(other_move)
    rock? && other_move.scissors? ||
    paper? && other_move.rock? ||
    scissors? && other_move.paper?
  end

  def <(other_move)
    rock? && other_move.paper? ||
    paper? && other_move.scissors? ||
    scissors? && other_move.rock?
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def scissors?
    @value == 'scissors'
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :name, :choice, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts '-------------------------------'
      puts 'Choose Rock, Paper, or Scissors'
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts "Invalid choice, please choose: 'Rock', 'Paper', or 'Scissors'."
    end
    @choice = Move.new(choice)
  end

  def set_name
    puts 'Type your name:'
    @name = gets.chomp
  end
end

class Computer < Player
  def choose
    @choice = Move.new(Move::VALUES.sample)
  end

  def set_name
    @name = ['Ultron', 'Zoltan'].sample
  end
end

class Table
  attr_accessor :history

  def initialize
    @history = []
  end
end

RPSGame.new.play
