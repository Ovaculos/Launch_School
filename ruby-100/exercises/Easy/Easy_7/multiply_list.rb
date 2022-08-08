def multiply_list(arr_1, arr_2)
  products = []

  arr_1.each_with_index do |num_first, index|
    products << (num_first * arr_2[index])
  end

  products

end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]