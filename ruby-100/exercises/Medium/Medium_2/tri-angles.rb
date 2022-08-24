def triangle(angle_1, angle_2, angle_3)
  angles = [angle_1, angle_2, angle_3].sort

  case
  when angle_1 + angle_2 + angle_3 != 180 || angles.any? { |angle| angle <= 0} then :invalid
  when angles.any? { |angle| angle == 90 } then :right
  when angles.all? { |angle| angle < 90 } then :acute
  else :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid