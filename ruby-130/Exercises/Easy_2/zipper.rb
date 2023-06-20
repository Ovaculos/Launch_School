def zip(array1, array2)
  return_array = []

  array1.each_with_index do |elem1, idx|
    return_array << [elem1, array2[idx]]
  end
  
  return_array
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
