#* 64. Minimum Path Sum
grid = [[1,3,1],[1,5,1],[4,2,1]]
# @param {Integer[][]} grid
# @return {Integer}
#* DP
def min_path_sum(grid)  
  m, n = grid.size, grid[0].size
  return 0 if m == 0 || n == 0
  dp = Array.new(m) { Array.new(n, 0) }

  dp[0][0] = grid[0][0]
  (1...m).each { |i| dp[i][0] = dp[i - 1][0] + grid[i][0] }
  (1...n).each { |j| dp[0][j] = dp[0][j - 1] + grid[0][j] }

  (1...m).each do |i|
    (1...n).each do |j|
      dp[i][j] = grid[i][j] + [dp[i - 1][j], dp[i][j - 1]].min
    end
  end
  dp[m - 1][n - 1]
end
p min_path_sum(grid)  
