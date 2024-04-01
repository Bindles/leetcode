#* 118. Pascal's Triangle
numRows = 5
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    
end



# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  result = Array.new(num_rows) { |i| Array.new(i + 1, 1) }

  result.each_cons(2) do |prev, curr|
    prev.each_cons(2).with_index(1) { |(a, b), index| curr[index] = a + b }
  end

  result
end



# Leetcode: 118. Pascal's Triangle.
# https://leetcode.com/problems/pascals-triangle/
# = = = = = = =
# Accepted.
# Thanks God!
# = = = = = = =
# Runtime: 126 ms, faster than 37.90% of Ruby online submissions for Pascal's Triangle.
# Memory Usage: 211 MB, less than 46.77% of Ruby online submissions for Pascal's Triangle.
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  answer = []
  (1..num_rows).each do |n|
    current = [1]*n
    (1..(n-2)).each do |i|
      current[i] = answer.last[i-1] + answer.last[i]
    end
    answer << current
  end
  answer
end


def generate(num_rows)
    result, current = [], []
    (1..num_rows).each do |row|
        previous = current.dup
        current = []
        (1..row).each do |cell|
            if cell == 1 || cell == row
                current << 1
            else
                current << previous[cell-1] + previous[cell-2]
            end
        end
        result << current
    end
    result
end


def generate(num_rows)
    arr = [];
    
    0.upto(num_rows-1) do |row|
        col_sz = row+1
        arr[row] = [1] * col_sz # Equivalent of Array.new(col_sz, 1)
        
        # First and last column value is already set with 1
        1.upto(col_sz-2) do |col|
            arr[row][col] = arr[row-1][col-1] + arr[row-1][col]
        end
    end
    
    arr
end




# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)

return [] if num_rows == 0
return [[1]] if num_rows == 1

output = []

(0..num_rows-1).each_with_index do |row, i|
  arr = []
  (0..i).each_with_index do |col, j|
    if j == 0 || j == row
      arr[j] = 1
    else
      arr[j] = output[i-1][j-1] + output[i-1][j]
    end
  end
  output[i] = arr
end



output

end



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