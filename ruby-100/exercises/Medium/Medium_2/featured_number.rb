def featured(num)
  num += 1

  until num % 7 == 0 && num.odd? do
    num += 1 
  end

  loop do 
    num_arr = num.to_s.chars
    return num if num_arr.uniq == num_arr
    num += 14
    break if num >= 10_000_000_000
  end
  
  "There's no possible number that fulfulls those requirements."
end

p featured(12)# == 21
p featured(20)# == 21
p featured(21)# == 35
p featured(997)# == 1029
p featured(1029)# == 1043
p featured(999_999)# == 1_023_547
p featured(999_999_987)# == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements