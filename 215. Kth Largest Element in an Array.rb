#* 215. Kth Largest Element in an Array
# nums = [3,2,1,5,6,4]
# k = 2
nums = [3,2,3,1,2,4,5,5,6]
k = 4
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
  def find_kth_largest(nums, k)
    nums.max(k).min
  end
find_kth_largest(nums, k)