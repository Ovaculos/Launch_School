INTEGERS = {'0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'a' => 10,
  'B' => 11,
  'b' => 11,
  'C' => 12,
  'c' => 12,
  'D' => 13,
  'd' => 13,
  'E' => 14,
  'e' => 14,
  'F' => 15,
  'f' => 15
}

def hexadecimal_to_integer(hex)
  digits = hex.chars.map{ |num| INTEGERS[num] }

  power = digits.size - 1

  final_array = []

  digits.each do |digit|
    final_array << (16 ** power) * digit
    power -= 1
  end

  final_array.reduce(:+)
end

p hexadecimal_to_integer('4D9f') == 19871
p hexadecimal_to_integer('82e93BA')