puts "Enter the length of the room in meters."
length = gets.chomp
puts "Enter the width of the room in meters."
width = gets.chomp

square_meters = length.to_f * width.to_f
square_feet = square_meters * 10.7639

puts "The room is #{square_meters.round(2)} square meters. (#{square_feet.round(2)} square feet)"