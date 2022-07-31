def interleave(arr_1, arr_2)
  combined_list = []
  until arr_2.empty?
    combined_list << arr_1.shift
    combined_list << arr_2.shift
  end

  combined_list
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']