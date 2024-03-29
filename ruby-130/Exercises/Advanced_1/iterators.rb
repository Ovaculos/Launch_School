factorial = Enumerator.new do |yielder|
  accum = 1
  number = 0
  loop do 
    accum = number.zero? ? 1 : accum * number
    yielder << accum
    number += 1
  end
end

6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="
factorial.rewind
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="

factorial.each_with_index do |value, number|
  puts "#{number}! == #{value}"
  break if number >= 5
end

