def transpose(orig_matrix)
  result = []
  num_of_rows = orig_matrix[0].size
  num_of_columns = orig_matrix.size

  ((0...num_of_rows)).each do |column_index|
    new_row = (0...num_of_columns).map { |row_index| orig_matrix[row_index][column_index] }
    result << new_row
  end

  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]


# def transpos(orig_matrix)
#   result = []
#   (0..2).each do |column_index|
#     new_row = (0..2).map { |row_index| orig_matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end