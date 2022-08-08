VALID_CHOICES = %w(rock paper scissors lizard spock)

SHORT_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WINNING_COMBOS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors']
}

def prompt(message)
  puts "=> #{message}"
end

def welcome_message
  prompt "---------------------------------------------------------------"
  prompt "       Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  prompt "---------------------------------------------------------------"
end

def get_player_choice
  player_choice = ''

  loop do 
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    player_choice = gets.chomp.downcase
    if VALID_CHOICES.include?(player_choice)
      break 
    elsif SHORT_CHOICES.include?(player_choice)
      player_choice = SHORT_CHOICES[player_choice]
      break
    end
    
    prompt "Invalid choice."
  end

  player_choice
end

def win?(first, second)
  WINNING_COMBOS[first].include?(second)
end

def loss?(first, second)
  WINNING_COMBOS[second].include?(first)
end

def display_result(player, computer)
  if win?(player, computer)
    'You won this round!'
  elsif loss?(player, computer)
    'You lost this round.'
  else
    'You tied this round.'
  end
end

def update_score(player, computer, score)
  if win?(player, computer)
    score[:player_wins] += 1
  elsif loss?(player, computer)
    score[:computer_wins] += 1
  else
    score[:ties] += 1
  end
end

def prompt_score(score)
  prompt "#{score[:player_wins]} rounds won."
  prompt "#{score[:computer_wins]} rounds lost."
  prompt "#{score[:ties]} rounds tied."
end

def announce_winner(score)
  if score[:player_wins] == 3
    prompt "You've won!"
  elsif score[:computer_wins] == 3
    prompt "You've lost."
  else
    return
  end

end

welcome_message

loop do
  score = {
    player_wins: 0,
    computer_wins: 0,
    ties: 0
  }

  loop do
    player_choice = get_player_choice

    computer_choice = VALID_CHOICES.sample

    prompt '----------------------------------------------'
    prompt "You chose #{player_choice}, and the computer had #{computer_choice}."
    prompt display_result(player_choice, computer_choice)
    prompt '----------------------------------------------'

    update_score(player_choice, computer_choice, score)
    prompt_score(score)
    announce_winner(score)

    prompt '----------------------------------------------'
  
    break if score[:player_wins] == 3 || score[:computer_wins] == 3

  end

  prompt 'Play again? (y/n)'
  redoo = gets.chomp.downcase
  break unless redoo.start_with?('y')

end
