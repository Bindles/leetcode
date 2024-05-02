#* 2373. Largest Local Values in a Matrix
grid = [[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]
# @param {Integer[][]} grid
# @return {Integer[][]}
#*
def largest_local(grid)
  result = []
  (1...grid.length - 1).each do |i|
      row = []
      (1...grid[0].length - 1).each do |j|
      max_value = -Float::INFINITY
      (-1..1).each do |o1|
          (-1..1).each do |o2|
          max_value = [max_value, grid[i + o1][j + o2]].max
          end
      end
      row << max_value
      end
      result << row
  end
  result
end
p largest_local(grid)
  