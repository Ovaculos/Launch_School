
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
INITIAL_MARKER = ' '
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # collums
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, p_score, c_score)
  system 'clear'
  puts "You are #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}. Your Score is #{p_score}, Computer's score is #{c_score}."
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(nums, delimiter=', ', word='or')
  case nums.size
  when 0 then ''
  when 1 then nums.first
  when 2 then nums.join(" #{word} ")
  else
    nums[-1] = "#{word} #{nums.last}"
    nums.join(delimiter)
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_marks!(brd)
  player_pos = ''
  loop do
    prompt "Pick an empty square to mark. (#{joinor(empty_squares(brd))})"
    player_pos = gets.chomp.to_i
    break if empty_squares(brd).include?(player_pos)
    prompt "That's not a valid input. Try again."
  end

  brd[player_pos] = PLAYER_MARKER
end

def computer_marks!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_squares(line, brd)
    break if square
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def find_at_risk_squares(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{ |k, v| line.include?(k) && v == COMPUTER_MARKER}.keys.first
  else
    nil
  end
end

loop do
  player_score = 0
  computer_score = 0

  loop do
    board = initialize_board

    loop do
      display_board(board, player_score, computer_score)

      player_marks!(board)
      break if someone_won?(board) || board_full?(board)

      computer_marks!(board)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board, player_score, computer_score)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      if detect_winner(board) == 'Player'
        player_score += 1
      else
        computer_score += 1
      end
    else
      prompt "It's a tie."
    end

    break if player_score >= 5 || computer_score >= 5
  end

  prompt "Play again? (y/n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end
