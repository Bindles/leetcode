def diagonal_sort(mat)
  m, n = mat.length, mat[0].length

  # Transpose the matrix
  transposed_mat = Array.new(m + n - 1) { [] }
  (0...m).each do |i|
    (0...n).each do |j|
      transposed_mat[i - j] << mat[i][j]
    end
  end

  # Sort each diagonal
  transposed_mat.each { |diagonal| diagonal.sort! }

  # Transpose the sorted matrix back
  sorted_mat = Array.new(m) { Array.new(n, 0) }
  (0...m).each do |i|
    (0...n).each do |j|
      sorted_mat[i][j] = transposed_mat[i - j].shift
    end
  end

  sorted_mat
end