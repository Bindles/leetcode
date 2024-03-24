#* 908. Smallest Range I
nums = [0,10]
k = 2
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
  [nums.max - nums.min - 2 * k, 0].max
end
p smallest_range_i(nums, k)

def smallest_range_i(nums, k)
  min, max = nums.minmax
  [max - min - 2 * k, 0].max
end
p smallest_range_i(nums, k)