def stringy(size)
  binary_string = ''
  counter = 0

  while counter != size
    if counter.even?
      binary_string << '1'
      counter += 1
    else
      binary_string << '0'
      counter += 1
    end
  end

  binary_string
end

# or

def stringy(size)
  binary_string = []

  size.times do |index|
    number = index.even? ? 1 : 0
    binary_string << number
  end

  binary_string.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

