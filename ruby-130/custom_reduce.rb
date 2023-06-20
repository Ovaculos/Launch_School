def reduce(arr, accum = 0)
  counter = 0

  until counter == arr.size
    accum = yield(accum, arr[counter])
    counter += 1
  end

  accum
end

reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
