# PYTHON
#* 959. Regions Cut By Slashes.rb#* 959. Regions Cut By Slashes
grid = [" /","/ "]
def regions_by_slashes(grid):
    n = len(grid) * 3
    res = 0
    
    new_grid = [[0] * n for _ in range(n)]

    def visit(i, j):
        if i < 0 or i >= n or j < 0 or j >= n or new_grid[i][j]:
            return
        new_grid[i][j] = 1
        visit(i + 1, j)
        visit(i - 1, j)
        visit(i, j + 1)
        visit(i, j - 1)

    for i in range(len(grid)):
        for j in range(len(grid[i])):
            x = i * 3
            y = j * 3
            if grid[i][j] == '/':
                new_grid[x][y + 2] = 1
                new_grid[x + 1][y + 1] = 1
                new_grid[x + 2][y] = 1
            elif grid[i][j] == '\\':
                new_grid[x][y] = 1
                new_grid[x + 1][y + 1] = 1
                new_grid[x + 2][y + 2] = 1

    for i in range(n):
        for j in range(n):
            if not new_grid[i][j]:
                res += 1
                visit(i, j)

    return res

print(regions_by_slashes(grid))  # => 2
