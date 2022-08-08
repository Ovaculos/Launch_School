def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_rightmost_digits(digits, rotates)
  (digits.to_s[0..-rotates - 1].to_s + rotate_string(digits.to_s[-rotates..-1])).to_i
end

def max_rotation(number)
  to_rotate = number.to_s.size
  to_rotate.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845