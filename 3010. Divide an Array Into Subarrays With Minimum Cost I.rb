#* 3010. Divide an Array Into Subarrays With Minimum Cost I
nums = [1,2,3,12]
# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
  nums.first + nums[1, nums.last].min(2).sum
end
p minimum_cost(nums)
# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
  nums[0] + nums[1..].min(2).sum  
end

def minimum_cost(nums)
  one = nums.shift
  nums.delete(nums.max)
  nums.sum + one
end
