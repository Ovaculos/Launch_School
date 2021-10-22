puts 'Put in number 1.'
num_one = gets.chomp.to_f
puts 'Put in number 2.'
num_two = gets.chomp.to_f
puts 'What type of operation would you like? ( + / - / * / / )'
operation = gets.chomp

case operation
when '+' then answer = num_one + num_two
when '-' then answer = num_one - num_two
when '*' then answer = num_one * num_two
when '/' then answer = num_one / num_two
end

puts answer
