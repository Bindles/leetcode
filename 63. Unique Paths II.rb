#* 63. Unique Paths II
obstacle_grid = [[0,0,0],[0,1,0],[0,0,0]]
# @param {Integer[][]} obstacle_grid
# @return {Integer}
#* MY SOL 2
def unique_paths_with_obstacles(obstacle_grid)
  m = obstacle_grid.length
  n = obstacle_grid[0].length
  dp = Array.new(m) { Array.new(n, 0) }

  dp[m - 1][n - 1] = 1 if obstacle_grid[m - 1][n - 1] == 0

  (m - 1).downto(0).each do |i|
    (n - 1).downto(0).each do |j|
      next if obstacle_grid[i][j] == 1
      dp[i][j] += dp[i + 1][j] if i < m - 1
      dp[i][j] += dp[i][j + 1] if j < n - 1
    end
  end

  dp[0][0]
end
p unique_paths_with_obstacles(obstacle_grid)

#* MY SOL 1
def unique_paths_with_obstacles(obstacle_grid)
  m = obstacle_grid.length
  n = obstacle_grid[0].length
  dp = Array.new(m) { Array.new(n, 0) }

  dp[m - 1][n - 1] = 1 if obstacle_grid[m - 1][n - 1] == 0

  (m - 1).downto(0).each do |i|
    (n - 1).downto(0).each do |j|
      next if obstacle_grid[i][j] == 1
      dp[i][j] += dp[i + 1][j] if i < m - 1
      dp[i][j] += dp[i][j + 1] if j < n - 1
    end
  end

  dp[0][0]
end
unique_paths_with_obstacles(obstacle_grid)


