def triangle(side_1, side_2, side_3)
  sides = [side_1, side_2, side_3].sort
  side_1, side_2, side_3 = sides[0], sides[1], sides[2]

  return :invalid if (side_1 + side_2) < side_3 || sides.any? { |side| side == 0 }
  return :equilateral if side_1 == side_2 && side_3
  return :isosceles if side_1 == side_2 || side_2 == side_3
  :scalene if side_1 != side_2 || side_2 != side_3

end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid