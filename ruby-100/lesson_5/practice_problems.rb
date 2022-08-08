# Problem 1

# Sort this array of number strings by descending numeric order


arr = ['10', '11', '9', '7', '8']

arr.sort do |x, y| 
  y.to_i <=> x.to_i
end

# Problem 2

# Order this array of hashes based on year of publication from earliest to latest.

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by! do |book|
#   book[:published].to_i
# end

# p books

# Problem 3

# Reference the letter 'g' in each of these collection objects

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p arr1[2][1][3]

# p arr2[1][:third][0]

# p arr3[2][:third][0][0]

# p hsh1['b'][1]

# p hsh2[:third].keys[0]

# Problem 4

# Turn the value 3 to 4 in each of the examples

# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4; p arr1

# arr2[2] = 4; p arr2

# hsh1[:first][2][0] = 4; p hsh1

# hsh2[['a']][:a][2] = 4; p hsh2

# Problem 5

# Find out the total age of the male members of the family

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_male_age = 0

# munsters.each_value do |data|
#   total_male_age += data["age"] if data["gender"] == "male"
# end

# p total_male_age

# Problem 6

# Print out the name, age, and gender of each family member

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, data|
#   puts "#{name} is a #{data['age']}-year-old #{data['gender']}."
# end

# Problem 7

# What would the final values of a and b be?

# a = 2
# b = [5, 8]
# arr = [a, b]

# arr[0] += 2
# arr[1][0] -= a

# a = 2
# b = [3, 8]

# p a; p b

# Problem 8

# Using #each, write some code to output all of the vowels from the strings

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# vowels = []

# hsh.each do |_, word_arrays|
#   word_arrays.each do |words| 
#     letters = words.chars
#     vowels << letters.select do |l|
#       ['a', 'e', 'i', 'o', 'u'].include?(l)
#     end

#   end
#   vowels.flatten!.each { |x| puts x }
# end

# Problem 9

# Return a new array of the same structure but with the sub arrays being ordered (alphabetically or munerically as appropriate) in desending order.

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map do |sub_array|
#   sub_array.sort { |x, y| y <=> x }
# end

# Problem 10

# Without modifying the original array, use the map method to return a new array identical to the original structure to the original but where the calue of each integer is incremented by 1

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# arr2 = arr.map do |hsh|
#   hsh.map { |sym, num| [sym, num += 1] }.to_h
# end

# p arr
# p arr2

# Problem 11

# Use a combination of methods, including etiher the select or reject method, to retrun a new array indentical in structure to the original but containing only the integers that are multiples of 3

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr2 = arr.map do |sub_arr|
#   sub_arr.select { |num| num % 3 == 0 }
# end

# p arr
# p arr2

# Problem 12

# Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# # expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# hsh = {}

# arr.each do |sub_arr|
#   hsh[sub_arr[0]] = sub_arr[1]
# end

# p hsh

# Problem 13

# Return a new array containing the same sub-arrays as the original but orgered logically by only taking into consideration the odd numbers they contain

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
# # Expected result: [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# answer = arr.sort_by do |sub_array|
#   sub_array.select { |num| num.odd? }
# end

# p answer

# Problem 14

# Write some code to return an array containing the colors of the fruits and the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# # Expected result: 
# # [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# answer = hsh.map do |_, data|
#   if data[:type] == 'fruit'
#     data[:colors].map { |color| color.capitalize }
#   else
#     data[:size].upcase
#   end
# end

# p answer

# Problem 15

# Write some code to return an array which contains only the hashes where all the integers are even

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# answer = arr.select do |hsh|
#   hsh if hsh.all? { |_, num_arr| num_arr.all? { |num| num.even? }}
# end

# p answer

# Problem 16

# Write a method that returns one UUID when called with no parameters

def uuid
  characters = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F)
  uuid = ''
  32.times do |iterations|
    uuid << characters.sample
    if [8, 12, 16, 20].include?(iterations)
      uuid << '-'
    end
  end
  uuid
end

p uuid