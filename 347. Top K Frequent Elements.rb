# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums = [1,1,1,2,2,3], k = 2)
    p nums.tally.sort_by {|key, value| -value}.first(k).map(&:first)
end
p top_k_frequent

nums = [1,1,1,2,2,3]
a = nums.tally_with_index
p a