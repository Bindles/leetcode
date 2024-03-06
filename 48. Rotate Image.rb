#* 48. Rotate Image
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
#* MY SOL | CONCISE
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  matrix.replace(matrix.transpose.map(&:reverse))
end
p rotate

#*MY SOL 1.5 | HANDICAP -.transpost
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  n = matrix.length

  # Transpose
  n.times do |i|
      (i...n).step(1) do |j|
          matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
      end
  end
  matrix.each(&:reverse!)
end
p rotate

#*SOL 2
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  matrix.reverse.each_with_index do |m, i|
    m.each_with_index do |n, j|
      break if matrix.size == j
      matrix[j].push(n)
    end
    matrix.size.times { matrix[matrix.size - i - 1].shift }
  end
end
p rotate

#*SOL3 | ~
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  n = matrix.size
  for i in 0..n/2
    for j in i...n-1-i
      matrix[i][j], matrix[j][~i], matrix[~i][~j], matrix[~j][i] = matrix[~j][i], matrix[i][j], matrix[j][~i], matrix[~i][~j]
    end
  end
  nil
end
p rotate

#* LEARN THESE
#* 4
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  z = (matrix.size - 1)
  for i in 0...(matrix.size / 2)
      for j in i..(z - i - 1)
          matrix[    i][j], matrix[j][z - i], matrix[z - i][z - j], matrix[z - j][    i] =
          matrix[z - j][i], matrix[i][    j], matrix[    j][z - i], matrix[z - i][z - j]
      end
  end
end
p rotate

#*5
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  (0...(matrix.size/2)).each_with_object(matrix) { |r, mt|
    (r...(matrix.size - r - 1)).each { |i|
      mt[r][i], mt[i][-r - 1], mt[-r - 1][-i - 1], mt[-i - 1][r] = mt[-i - 1][r], mt[r][i], mt[i][-r - 1], mt[-r - 1][-i - 1] 
  }} 
end
p rotate

#*6
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]])
  return matrix if matrix.empty?
      
  transpose(matrix)
  
  matrix.each{|r| r.reverse!}
end

def transpose(matrix)
  cols = 1
  matrix.count.times do |i|
    cols.times{|j| matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]}
    cols += 1
  end
end
p rotate