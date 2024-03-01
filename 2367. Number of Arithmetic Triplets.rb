# @param {Integer[]} nums
# @param {Integer} diff
# @return {Integer}
def arithmetic_triplets(nums = [0,1,4,6,7,10], diff = 3)
  nums.count {|num| nums.include?(num - diff) && nums.include?(num+diff)}
end