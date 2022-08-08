def multiply_all_pairs(arr_1, arr_2)
  result = []

  arr_1.each do |element_1|
    arr_2.each do |element_2|
      result << element_1 * element_2
    end
  end
  result.sort

end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]