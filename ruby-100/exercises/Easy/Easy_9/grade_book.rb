def get_grade(first, second, third)
  average = (first + second + third) / 3
  case average
  when 90.. then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  when ..59 then 'F'
  end

end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"