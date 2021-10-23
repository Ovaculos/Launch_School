def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number != 0
end

def operation_to_message(op)
  case op
  when '+' then 'Adding'
  when '-' then 'Subtracting'
  when '*' then 'Multiplying'
  when '/' then 'Dividing'
  end
end

num_one = nil
num_two = nil
operation = nil
redoo = nil

loop do
  loop do
    prompt 'Put in number 1.'
    num_one = gets.chomp.to_f

    if valid_number?(num_one)
      break
    else
      prompt "That's not a valid number, please input a valid number."
    end
  end

  loop do
    prompt 'Put in number 2.'
    num_two = gets.chomp.to_f

    if valid_number?(num_two)
      break
    else
      prompt "That's not a valid number, please input a valid number."
    end
  end

  prompt 'What type of operation would you like? ( + / - / * / / )'

  loop do
    operation = gets.chomp

    if %w(+ - * /).include?(operation)
      break
    else
      prompt 'Operator must be +, -, * or /'
    end
  end

  case operation
  when '+' then answer = num_one + num_two
  when '-' then answer = num_one - num_two
  when '*' then answer = num_one * num_two
  when '/' then answer = num_one / num_two
  end

  prompt "#{operation_to_message(operation)} the two numbers..."
  sleep(0.5)

  prompt "#{num_one} #{operation} #{num_two} is #{answer}."
  prompt 'Would you like to calculate again? ( y/n )'
  redoo = gets.chomp.downcase
  break unless redoo.start_with?('y')
end
