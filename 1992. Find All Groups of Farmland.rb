#* 1992. Find All Groups of Farmland
land = [[1,0,0],[0,1,1],[0,1,1]]
# @param {Integer[][]} land
# @return {Integer[][]}
#* SOL
def find_farmland(land)
  m = land.size
  n = land[0].size
  result = []
  land = [[0] * (n + 1)] + land.map { |row| [0] + row }

  (1..m).each do |r|
    (1..n).each do |c|
      if land[r][c] != 0 && land[r - 1][c] == 0 && land[r][c - 1] == 0
        r_start, c_start = r, c

        while r_start < m && land[r_start + 1][c] != 0
          r_start += 1
        end

        while c_start < n && land[r][c_start + 1] != 0
          c_start += 1
        end

        result << [r - 1, c - 1, r_start - 1, c_start - 1]
      end
    end
  end

  result
end
p find_farmland(land)

