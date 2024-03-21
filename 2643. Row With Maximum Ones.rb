#* 2643. Row With Maximum Ones
# @param {Integer[][]} mat
# @return {Integer[]}
mat = [[0,0,0],[0,1,1]]
#* MY SOL | OPT
def row_and_maximum_ones(mat)
  mat.each.with_index.max_by{ |row,_i|row.count(1) }.then{ |row,i| [ i, row.count(1) ] }
end
p row_and_maximum_ones(mat) # Output: [1, 2]

#* WORKING . . .
#*
def row_and_maximum_ones(mat)
    mat.each.with_index.count{|row,index| [row.count(1), index]}
end
p row_and_maximum_ones(mat)

#*
def row_and_maximum_ones(mat)
  mat.each.with_index{|row,index| p [row.count(1), index]}
end
p row_and_maximum_ones(mat)

#*
def row_and_maximum_ones(mat)
  mat.each.with_index.max_by { |row, _| row.count(1) }[1]
end

p row_and_maximum_ones(mat) # Output: 1



