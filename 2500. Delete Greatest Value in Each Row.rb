# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid = [[1,2,4],[3,3,1]])
  p grid[1].length
  p grid[0]
  p grid[1]
  grid.each do |g|
    g.each do |gg|
      p gg
    end
    
  end
end
p delete_greatest_value


grid = [[1,2,4],[3,3,1]]

grid.each do |sub_array|
p 'grid'
sub_array.each.with_index do |element, i|
  puts element, i
end
end
p '-'

removals=[]
result=[]
while grid[0].size > 1
grid.each do |sub_array|
  p grid
  p sub_array
  p sub_array.max
  removals << sub_array.delete_at(sub_array.index(sub_array.max)) if sub_array.include?(sub_array.max)
  #IS IT POSSIBLE TO use delete_at and put the deleted valye in removals array at same time?
  
end
p removals 
p result << removals.max
end
p result.sum

arr=[1,2]
p arr.max






# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid = [[1,2,4],[3,3,1]])
grid.map(&:sort).transpose(&:max)  
end
p delete_greatest_value
# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
for i in (0...grid.length)
    grid[i].sort!
end
ans = 0
for i in (0...grid[0].length)
    val = grid[0][i]
    for j in (1...grid.length)
        val = [val, grid[j][i]].max
    end
    ans += val
end
return ans
end


# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
grid.each do |row|
    row.sort!
end

answer = 0
x = 0
while x < grid[0].size
    y = 0
    max = 0
    while y < grid.size
        if grid[y] and grid[y][x] > max
            max = grid[y][x] 
        end
        y += 1
    end
    answer += max
    x += 1
end

answer
end

p gridz = [[1,2,4],[3,3,1]].map(&:sort).transpose.sum(&:max)
p '-'

sorted_rows = [[1,2,4],[3,3,1]].map(&:sort)
transposed_matrix = sorted_rows.transpose
sum_of_max_values = transposed_matrix.sum(&:max)
p sum_of_max_values

p '$%$$'
p gridz = [[1,2,4],[3,3,1]].map(&:sort).transpose.map(&:max)
p gridz = [[1,2,4],[3,3,1]].map(&:sort).transpose.map(&:max).sum

p gridz = [[1,2,4],[3,3,1]].sum(&:max)
#p gridz = [[1,2,4],[3,3,1]].map(&:odd?)
p gridz = [1,2,4,7,3].select(&:odd?).sum
#p gridz = [1,2,4,7].select(&:odd?).map(&:sum)
p gridz = [1,2,4,7,3].map(&:to_s)
p gridz = [1,22,4,7,3].map(&:to_s).map(&:length)
p gridz = %w[1 22 4 7 3].map(&:length)

# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
grid.map{|row| row.sort}.transpose.map(&:max).sum
end


nums = [3,2,1,4]
p '!'
p nums.select { |num| !(num.even?) }
p nums.select { |num| !(nums.max) } #returns nothing
p 'best'
p nums.reject{ |num| num == nums.max || num == nums.min}
p nums.reject{_1 == nums.max||_1 == nums.min}
p nums.select { |num| !(nums.max) } #returns nothing; use reject
p nums.select { |num| num != nums.min && num != nums.max }
numz = [3,2,1,4]
p numz.select{ _1.even?}
p nums.select { !(_1.even?) }
p nums.select { _1 != nums.min &&_1 != nums.max }