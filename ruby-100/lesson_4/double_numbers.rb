my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(numbers, modifier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * modifier

    counter += 1
  end

  multiplied_numbers
end


p multiply(my_numbers, 5)
p my_numbers