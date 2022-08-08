# def find_dup(numbers)
#   iterations = 0
#   current = 0

#   loop do 
#     current = numbers[iterations]
#     break if numbers.include?(current) or iterations == (numbers.size - 1)
#     iterations += 1
#   end

#   current
# end

# def find_dup(numbers)
#   uniq_arr = numbers.each do |number|
#     uniq_arr << number if !uniq_arr.any? { |x| x == number }; next
#     uniq_arr << number; break
#   end

#   uniq_arr[-1]
# end

# def find_dup(numbers)
#   last = nil
#   sorted_numbers = numbers.sort

#   sorted_numbers.each do |num|
#     return num if (num <=> last) == 0
#     last = num
#   end

# end

def find_dup(numbers)
  numbers.find { |num| numbers.count(num) == 2 }
end

p find_dup([1, 5, 3, 1, 8])# == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])# == 73