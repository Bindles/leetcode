#* 2482. Difference Between Ones and Zeros in Row and Column
grid = [[0,1,1],[1,0,1],[0,0,1]]
# @param {Integer[][]} grid
# @return {Integer[][]}
#* SOL 1 | HAD TO GET HELP
def ones_minus_zeros(grid)
    onesRow = grid.map { _1.count(1) }
    zeroRow = grid.map { _1.count(0) }
    onesCol = grid.transpose.map { _1.count(1) }
    zeroCol = grid.transpose.map { _1.count(0) }
    
    grid.each_with_index.map do |row, i| 
        row.each_with_index.map do |v, j|
            onesRow[i] + onesCol[j] - zeroRow[i] - zeroCol[j]
        end
    end
end
p ones_minus_zeros(grid)

#*INTERESTING SOLS. . .
#*SOL ONELINER
def ones_minus_zeros(grid)
    grid.transpose.map(&:sum).yield_self { |b| grid.map { |r| b.map { 2 * (_1 + r.sum) - grid.size - b.size } } }
end
p ones_minus_zeros(grid)

#*SOL 
def ones_minus_zeros(grid)
    r,c = grid.length,grid[0].length
    rows,cols = Array.new(r,0),Array.new(c,0)

    r.times do |i|
        c.times do |j|
            if (grid[i][j] == 1)
                rows[i]+=1
                cols[j]+=1
            end
        end
    end

    r.times do |i|
        c.times do |j|
            grid[i][j] = (2*rows[i]-r)+(2*cols[j]-c)
        end
    end
    grid
end

#*
def ones_minus_zeros(grid)
    def get_tally(arr)
        return arr.each_with_index.with_object({}){|(row, i), arr| arr[i] = row.tally }
    end

    rows = get_tally(grid)
    columns = get_tally(grid.transpose)

    weights = []

    rows.each do |i, row| #O(m)
        weights << []
        columns.each do |j, col|  #O(n)
            diff = row[1].to_i+col[1].to_i-row[0].to_i-col[0].to_i
            weights[-1] << diff
        end
    end
    weights
end

