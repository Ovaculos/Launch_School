def triangle(size)
  spaces = size - 1
  stars = 1

  size.times do |x|
    p (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1 
  end

end

triangle(5)
