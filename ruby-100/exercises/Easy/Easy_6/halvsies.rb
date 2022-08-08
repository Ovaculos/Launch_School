def halvsies(array)
  first_arr = []
  second_arr = []
  iterations = 0

  ((array.size/2.0).round).times do 
    first_arr.push(array[iterations])
    iterations += 1
  end

  (array.size / 2).times do 
    second_arr.push(array[iterations])
    iterations += 1
  end

  [first_arr, second_arr]
end

halvsies([1, 2, 3, 4])# == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]
halvsies([5])# == [[5], []]
halvsies([]) == [[], []]