puts "Put in number 1."
num_1 = gets.chomp.to_f
puts "Put in number 2."
num_2 = gets.chomp.to_f
puts "What type of operation would you like? ( + / - / * / / )"
operation = gets.chomp

case operation
when "+" then answer = num_1 + num_2
when "-" then answer = num_1 - num_2
when "*" then answer = num_1 * num_2
when "/" then answer = num_1 / num_2
end

puts answer