def find_fibonacci_index_by_length(length)
  iterations = 2

  until fibonacci(iterations).to_s.length == length
    iterations += 1
  end
  iterations

end

def fibonacci(its)
  its <= 1 ? its : fibonacci(its - 1) + fibonacci(its - 2)
end


p find_fibonacci_index_by_length(2)# == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)# == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)# == 45
p find_fibonacci_index_by_length(100)# == 476
p find_fibonacci_index_by_length(1000)# == 4782
p find_fibonacci_index_by_length(10000)# == 47847
