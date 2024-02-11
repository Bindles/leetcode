def modified_matrix(matrix)
  rows = matrix.length
  cols = matrix[0].length

  # Finding the maximum value in each column
  max_values = Array.new(cols, -1)
  (0...cols).each do |j|
    (0...rows).each do |i|
      max_values[j] = [max_values[j], matrix[i][j]].max
    end
  end

  # Replacing -1 with the maximum value in each column
  (0...cols).each do |j|
    (0...rows).each do |i|
      matrix[i][j] = max_values[j] if matrix[i][j] == -1
    end
  end

  matrix
end


# Test Case 1
matrix1 = [[1, 2, -1], [4, -1, 6], [7, 8, 9]]
result1 = modified_matrix(matrix1)
puts result1.inspect
# Output: [[1, 2, 9], [4, 8, 6], [7, 8, 9]]

# Test Case 2
matrix2 = [[3, -1], [5, 2]]
result2 = modified_matrix(matrix2)
puts result2.inspect
# Output: [[3, 2], [5, 2]]
