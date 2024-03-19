#* 807. Max Increase to Keep City Skyline
grid = [[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]]
# @param {Integer[][]} grid
# @return {Integer}
#* SOL 1 | TRANSPOSE | SUPER PROUD OF THIS ANOTHER CHANCE TO USE TRANSPOSE
#* PUTS/DEBUG BELOW
def max_increase_keeping_skyline(grid)
  n=grid.length
  row=grid.map(&:max)
  col=grid.transpose.map(&:max)
  increase=0

  (0...n).each do |i|
    (0...n).each do |j|
      increase += [ row[i], col[j] ].min - grid[i][j] 
    end
  end
  increase
end
p max_increase_keeping_skyline(grid)

#* SOL 1.1 | CONCISE | LOL NIGHT FULL OF CHANCES LOOP IN LOOP SUM
def max_increase_keeping_skyline(grid)
  n = grid.length
  row = grid.map(&:max)
  col = grid.transpose.map(&:max)
  (0...n).sum { |i| (0...n).sum { |j| [row[i], col[j]].min - grid[i][j] } }
end
p max_increase_keeping_skyline(grid)


#* SOL 1.01 | PUTS| DEBUG | TRANSPOSE | 
def max_increase_keeping_skyline(grid)
  n=grid.length
  p row=grid.map(&:max)
  p grid.transpose.map #JUST PEEKING <= NOT NEEDED 
  p col=grid.transpose.map(&:max)
  increase=0

  (0...n).each do |i|
    (0...n).each do |j|
      increase += [ row[i], col[j] ].min - grid[i][j] 
    end
  end
  increase
end
p max_increase_keeping_skyline(grid)


