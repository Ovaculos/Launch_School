def prompt(message)
  puts "=> #{message}"
end

# to make it take floats or strings, could use regex to add .0 to an input like: "5". Check for a decimal, if none, add a ".0" to the end of input. 
# If decimal, check for numbers after, if none, add "0" to end of input.

def valid_number?(input)
  if input.to_f.to_s == input
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
    num_one = gets.chomp

    if valid_number?(num_one)
      break
    else
      prompt "That's not a valid number, please input a valid number."
    end
  end

  loop do
    prompt 'Put in number 2.'
    num_two = gets.chomp

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
  when '+' then answer = num_one.to_f + num_two.to_f
  when '-' then answer = num_one.to_f - num_two.to_f
  when '*' then answer = num_one.to_f * num_two.to_f
  when '/' then answer = num_one.to_f / num_two.to_f
  end

  prompt "#{operation_to_message(operation)} the two numbers..."
  sleep(0.5)

  prompt "#{num_one} #{operation} #{num_two} is #{answer}."
  prompt 'Would you like to calculate again? ( y/n )'
  redoo = gets.chomp.downcase
  break unless redoo.start_with?('y')
end
