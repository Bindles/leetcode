# RUBY
#* 959. Regions Cut By Slashes.rb#* 959. Regions Cut By Slashes
grid = [" /","/ "]
def regions_by_slashes(grid)
  n = grid.length * 3
  res = 0
  
  new_grid = Array.new(n) { Array.new(n, 0) }

  visit = lambda do |i, j|
    return if i < 0 || i >= n || j < 0 || j >= n || new_grid[i][j] == 1
    new_grid[i][j] = 1
    visit.call(i + 1, j)
    visit.call(i - 1, j)
    visit.call(i, j + 1)
    visit.call(i, j - 1)
  end

  grid.each_with_index do |row, i|
    row.chars.each_with_index do |char, j|
      x = i * 3
      y = j * 3
      if char == '/'
        new_grid[x][y + 2] = 1
        new_grid[x + 1][y + 1] = 1
        new_grid[x + 2][y] = 1
      elsif char == '\\'
        new_grid[x][y] = 1
        new_grid[x + 1][y + 1] = 1
        new_grid[x + 2][y + 2] = 1
      end
    end
  end

  (0...n).each do |i|
    (0...n).each do |j|
      if new_grid[i][j] == 0
        res += 1
        visit.call(i, j)
      end
    end
  end

  res
end

puts regions_by_slashes(grid)  