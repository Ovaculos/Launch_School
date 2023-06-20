def times(number)
  counter = 0
  if block_given?
    while counter < number
      yield(counter)
      counter += 1
    end
  end
  number
end

times(5) do |num|
  puts num
end