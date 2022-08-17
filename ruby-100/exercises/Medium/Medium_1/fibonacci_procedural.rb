def fibonacci(nth)
  return 0 if nth <= 0
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last.to_s.chars[-1].to_i
end

p fibonacci(0)# == 6765
p fibonacci(1)
p fibonacci(100)# == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

# F0 = 0
# F1 = 1
# F>=2 = Fn-1 + Fn-2

#F4 = F3 + F2

#F3 = F2 + F1
#F3 = F2 + 1
#F2 = F1 + F0 (1)

