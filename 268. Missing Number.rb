# @param {Integer[]} nums
# @return {Integer}
#*MY SOL
def missing_number(nums)
  (0..nums.length).sum - nums.sum
end

#WORKING...
def missing_number(nums = [3,0,1])
    p nums[0..nums.length-1]
    nums.min..nums.max.times do |num|
      p num, nums.count(num) > 0
    end
end
p missing_number