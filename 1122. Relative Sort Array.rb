# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6])
  p arr1.sort_by { arr2.index(_1) or (_1 + arr2.size)}
    
end
p relative_sort_array
# Output: [2,2,2,1,4,3,3,9,6,7,19]
