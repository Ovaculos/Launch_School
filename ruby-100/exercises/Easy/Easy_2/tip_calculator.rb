puts "How much is the bill?"
bill = gets.chomp.to_f
puts "What percentage do you want to tip?"
tip_percentage = gets.chomp.to_f / 100

tip_total = (bill * tip_percentage).round(2)
bill_total = (bill + tip_total).round(2)

puts "The tip is #{format("&.2f", tip_total)}."
puts "The total bill is #{bill_total}."
