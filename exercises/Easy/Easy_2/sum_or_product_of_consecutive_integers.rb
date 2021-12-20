puts ">> Please enter an integer greater than 0."
number = 0
array = []

loop do
  number = gets.chomp.to_i
  1.upto(number).each { |x| array << x }
  break if number > 0 
  puts ">> Invalid number, it needs to be greater than 0."
end

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

case choice
when 's' then puts "The sum of the integers between 1 and #{number} is #{array.reduce(:+)}."
when 'p' then puts "The product of the integers between 1 and #{number} is #{array.reduce(:*)}."
end

