def reverse!(array)

  iterations = 0
  iterations_back = 1
  until iterations == array.length / 2

    first = array[iterations]
    second = array[-iterations_back]
    array[iterations] = second
    array[-iterations_back] = first
    iterations += 1
    iterations_back += 1
  end

  array

end



list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true