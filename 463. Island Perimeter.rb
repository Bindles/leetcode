#* 463. Island Perimeter
grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    res = 0
    grid.each_index do |i|
        grid[i].each_index do |j|
            next if grid[i][j] == 0
            res += 1 if i == 0 || grid[i-1][j] == 0
            res += 1 if j == 0 || grid[i][j-1] == 0
            res += 1 if i == grid.length - 1 || grid[i + 1][j] == 0
            res += 1 if j == grid[i].length - 1 || grid[i][j + 1] == 0
        end
    end
    res
end
p island_perimeter(grid)