#* 977. Squares of a Sorted Array
nums = [-4,-1,0,3,10]
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.map{|num|num**2}.sort
end
p sorted_squares(nums)
p 4  ** 2
p 8 * 8