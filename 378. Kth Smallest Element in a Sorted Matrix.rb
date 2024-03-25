#* 378. Kth Smallest Element in a Sorted Matrix
matrix = [[1,5,9],[10,11,13],[12,13,15]]
k = 8
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
#* SOL
def kth_smallest(matrix, k)
  matrix.flatten.sort![k-1]
end
p kth_smallest(matrix, k) 