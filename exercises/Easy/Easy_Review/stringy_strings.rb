def stringy(size)
  binary_array = []

  size.times do |num|
    number = num.even? ? 1 : 0
    binary_array << number
  end

  binary_array.join()
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'