#* 1277. Count Square Submatrices with All Ones
matrix =
[
  [0,1,1,1],
  [1,1,1,1],
  [0,1,1,1]
]
# @param {Integer[][]} matrix
# @return {Integer}
#* MY SOL
  def count_squares(matrix)
    rows = matrix.length
    cols = matrix[0].length
    
    
    res = 0
    (0...rows).each do |y|
      (0...cols).each do |x|
        if matrix[y][x] == 1
          if x > 0 && y > 0
            matrix[y][x] = [matrix[y][x-1], matrix[y-1][x], matrix[y-1][x-1]].min + 1
          end
          res += matrix[y][x]
        end
      end
    end
    res
  end
p count_squares(matrix)

#* LIKE
def generate(num_rows)
  (num_rows-1).times.inject([[1]]) {|r, i| r << ([1] + r.last.each_cons(2).collect(&:sum) + [1]) }
end


#*
def generate(num_rows)
  (num_rows - 1).times.inject([[1]]) do |triangle, row_index|
      next_row = [1] + triangle.last.each_cons(2).map(&:sum) + [1]
      triangle << next_row
  end
end

