#* 2475. Number of Unequal Triplets in Array
nums = [4,4,2,4,3]
# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
  nums.combination(3).count { |triplet| triplet.uniq.size == 3 }
end
p unequal_triplets(nums)
