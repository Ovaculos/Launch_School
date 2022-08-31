# def merge(arr_1, arr_2)
#   result = []
#   index_first, index_second = 0, 0

#   return arr_1 if arr_2.empty?
#   return arr_2 if arr_1.empty?

#   (arr_1 + arr_2).size.times do 
#     case arr_1[index_first] <=> arr_2[index_second]
#     when -1 then result << arr_1[index_first]; index_first += 1
#     when 1 then result << arr_2[index_second]; index_second += 1
#     when 0 then result << arr_1[index_first]; index_first += 1
#     when nil then if arr_1[index_first] != nil
#         result << arr_1[index_first]
#      else
#        result << arr_2[index_second]
#       end
#     end
#   end

#   result
# end

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


p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]