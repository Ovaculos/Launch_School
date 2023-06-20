def step(start, finish, step)
  current_val = start

  loop do
    yield(current_val)
    break if current_val >= finish
    current_val += step
  end

  nil
end

step(1, 10, 3) { |value| puts "value = #{value}" }