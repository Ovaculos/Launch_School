# One

# Make it break after first iteration

# loop do
#   puts 'Just keep printing...'
#   break
# end

# Two

# Make break after first iteration

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# Three

# Make this iterate 5 times

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end

# Four

# Make code stop iterating when user inputs yes

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# Five

# Make 'Hello!' print 5 times

# say_hello = true
# iterations = 1

# while say_hello
#   puts 'Hello!'
#   iterations += 1
#   say_hello = false if iterations > 5
# end

# Six

# numbers = []

# while numbers.size < 5
#   numbers << rand(0..99)
# end

# puts numbers

# Seven

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# Eight

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end

# Nine

# for i in 1..100
#   puts i if i.odd?
# end

# Ten

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friends in friends
  puts "Hello, #{friends}"
end
