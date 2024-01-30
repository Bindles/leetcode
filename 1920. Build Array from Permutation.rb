# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
  ans=[]; nums.each.with_index{|num,i| p ans[i] = nums[nums[i]] } and ans
end