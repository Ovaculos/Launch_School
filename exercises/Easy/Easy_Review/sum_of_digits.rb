def sum(number)
  sum_of = number.to_s.split('').to_a.map do |x|
    x.to_i
  end
  sum_of.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45