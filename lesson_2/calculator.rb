# ask for 2 two numbers
# ask for the opertion to perform
# perform operation
# output result

puts "Welcome to Calculator!"

puts "Give your first number."
num_1 = gets.chomp

puts "Give your second number."
num_2 = gets.chomp

puts "What operation would you like to perform? ( 1 - Add | 2 - Subtract | 3 - Multiply | 4 - Divide )"
operation = gets.chomp

if operation == "1"
  result = num_1.to_i + num_2.to_i
elsif operation == "2"
  result = num_1.to_i - num_2.to_i
elsif operation == "3"
  result = num_1.to_i * num_2.to_i
elsif operation == "4"
  result = num_1.to_f / num_2.to_f
else
  puts "That's not a valid operation."
end

puts result