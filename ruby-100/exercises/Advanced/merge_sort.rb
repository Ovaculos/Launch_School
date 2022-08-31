def merge(arr_1, arr_2)
  result = []
  index_2 = 0

  arr_1.each do |value|
    while index_2 < arr_2.size && arr_2[index_2] <= value
      result << arr_2[index_2]
      index_2 += 1
    end
    result << value
  end

  result.concat(arr_2[index_2..-1])
end

def merge_sort(array)
  return array if array.size == 1 

  a_1 = array[0...(array.size / 2)]
  a_2 = array[(array.size / 2)..-1]

  a_1 = merge_sort(a_1)
  a_2 = merge_sort(a_2)

  merge(a_1, a_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
