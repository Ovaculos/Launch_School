*Example 1*

[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

Describe what's happening

#each is being called on an array that contains 2 other arrays. |arr| is assigning a varible for each of the arrays passed into the block, for when they are being iterated on. arr.first is returning the object at index 0 in arr. puts arr.first is printing a string of the returned value of arr.first (0). The first element is 1 and 3 respectively, so it puts those. After iterating twice, because that's the size of the array #each was called on, without the size changing during iteration, #puts returns nil, but #each does nothing with the return value of the block #each will return the array it was called on

*Example 2*

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

Describe what's happening

#map is being called on an array that contains 2 other arrays. |arr| is the variable for each array passed into the block. arr.first is returning the object at index 0 in arr, which is 1 and 3 respectively, so they are printed to the console because #puts prints a string of the return value of whatever it's called on. #puts also returns nil, and #map takes whatever the return value is of the block, and replaces the old element with the return value. That's why the return value is [nil, nil], #map iterates twice, and each times, the block is returning nil, so it gets transformed onto the array.

*Example 3*

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

Describe what's happening

#map is being called on an array, which contains 2 other arrays. |arr| is assigning an arr variable to the array passed in the block. In this case, the block will be called twice, once with the first array in the master array, and twice with the second. arr.first will return the object at index 0 of arr, which is 1 and 3 respectively. #puts will print a string of the return value of what it's called on, in this case, arr.first (Will put '1', and '3'). Then, arr.first is called again, making the return value of the block the object at index 0 of arr. #map will take the return value of the block and replaces the old element in the array it's called on to the return value, on the first iteration, it will replace [1, 2] to 1, the return of the first block call, and then replace [3, 4] with 3 on it's second iteration. The return value of map will be [1, 3]. Only side effect is the putting of the string representations of the integers the first line in the block excecutes.

*Question 4*

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

Describe what's happening

#each is called on an array containing two other arrays. |arr| is assigning arr to the array passed into the block. arr.each is then making another #each call on the arrays that are passed into the first #each call. |num| assigns num to the objects that are in the sub-arrays for the iterating. if num > 5 will excecute code when num is greater than 5, which happens 3 times in this example, puts will return nil, but nothing is done with that return value. It will put those 3 numbers. There is no side effect besides putting the numbers so far. arr.each will return arr, and is not modifying anything. The first #each call, on line 1 will return the original array it was called on, and then assign my_arr to that original array, which is [[18, 7], [3, 12]].

*Question 5*

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

What will the return value be?

=> [[2, 4]. [6, 8]]

