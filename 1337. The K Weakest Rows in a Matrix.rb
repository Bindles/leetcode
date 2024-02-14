#WORKS BELOW
m = [
  [1, 1, 0, 0, 0],
  [1, 1, 1, 1, 0],
  [1, 0, 0, 0, 0],
  [1, 1, 0, 0, 0],
  [1, 1, 1, 1, 1]
]
# Group each row by the count of 1s
p m.sort_by { |row| row.count(1) }
p m.sort_by.with_index{|row, i| row.count(1)}


#MY SOL
def k_weakest_rows(mat, k)
  p mat.each.with_index.sort_by { |row, _| row.count(1) }.map(&:last)[0...k]
end

#MY SOL | WORKING..
def k_weakest_rows(mat, k)
  sorted_indices = mat.each.with_index.sort_by { |row, _| row.count(1) }.map(&:last)
  sorted_indices[0...k]
end

mat = [
  [1,1,0,0,0],
  [1,1,1,1,0],
  [1,0,0,0,0],
  [1,1,0,0,0],
  [1,1,1,1,1]
]
k = 3

p k_weakest_rows(mat, k)  # Output: [2, 0, 3]


#SOMEONE ELSES I WANT TO LOOK AT:
def k_weakest_rows(mat, k)
  mat.map.with_index { |row, i| [row.inject(0, :+), i] }
      .sort_by { |element| element[0] }
      .map { |element| element[1] }.first(k)
end




#OLD

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[]}
# def k_weakest_rows(mat, k)
#   p mat.sort_by.with_index{|row, i| row.count(1)}
# end

# mat = 
# [[1,1,0,0,0],
#  [1,1,1,1,0],
#  [1,0,0,0,0],
#  [1,1,0,0,0],
#  [1,1,1,1,1]] 
# k = 3
# p k_weakest_rows(mat, k)

# #ABOVE THROWS ERROR