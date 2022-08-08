year = Time.now.year
puts "How old are you?"
age = gets.chomp.to_i
puts "How old do you want to be when you retire?"  
retirement_age = gets.chomp.to_i
retirement_year = (retirement_age - age) + year

puts "It's #{year}, and you will retire in #{retirement_year}. That's only #{retirement_year - year} more years. Keep going!"