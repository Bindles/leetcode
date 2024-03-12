#* 2441. Largest Positive Integer That Exists With Its Negative
nums = [-1,10,6,7,-7,1]
# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
    nums.select{|n| n > 0 && nums.include?(-n)}.max || -1
end
p find_max_k(nums)
p find_max_k(nums = [-10,8,6,7,-2,-3])