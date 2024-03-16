#PYTHON
#* 977. Squares of a Sorted Array
nums = [-4,-1,0,3,10]
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums):
  return sorted(num**2 for num in nums)

print(sorted_squares(nums))


#*sometime bracket is used inside => 
#return sorted([num**2 for num in nums])
#* reverse  
#return sorted([num**2 for num in nums], reverse=True)
#return sorted((num**2 for num in nums), reverse=True)