def missing(arr)
  whole_range = (arr.first..arr.last).to_a
  arr.each { |num| whole_range.delete(num) }
  whole_range
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []