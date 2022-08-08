# def merge(array_one, array_two)
#   result_array = array_one + array_two
#   result_array.flatten.uniq
# end

# or

def merge(array_one, array_two)
  array_one | array_two
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]