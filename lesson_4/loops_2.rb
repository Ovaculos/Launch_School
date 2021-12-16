# One

# count = 1

# loop do
#   puts "#{count} is odd" if count.odd?
#   puts "#{count} is even" if count.even?
#   count += 1
#   break if count > 5
# end

# Two

# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(1, 10)
# end

# Three

# process_the_loop = [true, false].sample

# if process_the_loop == true
#   loop do
#     puts 'The loop was processed'
#     break
#   end
# else
#   puts "The loop wasn't processed"
# end

# Four

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts 'Wrong answer, try again.'
#   end
# end

# Five

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# p numbers

# Six

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop
#   break if names.empty?
# end

# Seven

# 5.times do |index|
#   puts index
#   break if index == 2 
# end

# Eight

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# Nine

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a >= 5 || number_b >= 5
#   puts '5 was reached!'
#   break
# end

# Ten

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end
