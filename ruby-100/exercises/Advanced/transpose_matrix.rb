matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# def transpose(orig_matrix)
#   result = []
#   result[0] = [orig_matrix[0][0], orig_matrix[1][0], orig_matrix[2][0]]
#   result[1] = [orig_matrix[0][1], orig_matrix[1][1], orig_matrix[2][1]]
#   result[2] = [orig_matrix[0][2], orig_matrix[1][2], orig_matrix[2][2]]
#   result
# end

def transpose(orig_matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| orig_matrix[row_index][column_index] }
    result << new_row
  end
  result
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
