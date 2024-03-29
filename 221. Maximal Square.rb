#* 221. Maximal Square
matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
# @param {Character[][]} matrix
# @return {Integer}
#*
def maximal_square(matrix)
  return 0 if matrix.empty?

  rows = matrix.size
  cols = matrix[0].size
  dp = Array.new(rows + 1) { Array.new(cols + 1, 0) }
  max = 0

  (0...rows).each do |i|
      (0...cols).each do |j|
          if matrix[i][j] == '1'
              dp[i + 1][j + 1] = [dp[i][j], dp[i][j + 1], dp[i + 1][j]].min + 1
              max = dp[i + 1][j + 1] if dp[i + 1][j + 1] > max
          end
      end
  end
  max * max
end
p maximal_square(matrix)