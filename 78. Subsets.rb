#* 78. Subsets
nums = [1,2,3]
# @param {Integer[]} nums
# @return {Integer[][]}
#*
def subsets(nums)
    (0..nums.size).flat_map{|index| nums.combination(index).to_a }
end
p subsets(nums)

