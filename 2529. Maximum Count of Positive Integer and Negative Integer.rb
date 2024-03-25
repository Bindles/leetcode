#* 2529. Maximum Count of Positive Integer and Negative Integer
nums = [-3,-2,-1,0,0,1,2]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOL
def maximum_count(nums)
  numsx =nums.reject{|num| num == 0}
  nums_part = numsx.partition{|num| num < 0}
  return [nums_part[0].size, nums_part[1].size].max
end
p maximum_count(nums)

#*PRACTICE YIELD_SELF PARTITION => RETURN
def maximum_count(nums)
    numsx =nums.reject{|num| num == 0}
    numsx.partition{|num| num < 0}.yield_self{|nums_ptn| [nums_ptn[0].size, nums_ptn[1].size]}.max
end
p maximum_count(nums)

#* PRACTICE YIELD_SELF REJECT=>PARTITION
def maximum_count(nums)
  nums_ptn = nums.reject{|num| num == 0}.yield_self{|numsx|numsx.partition{|num| num < 0}}
  return [nums_ptn[0].size, nums_ptn[1].size].max
end
p maximum_count(nums)

#*YIELD 
def maximum_count(nums)
  nums.reject{|num| num == 0}.yield_self{|numsx|numsx.partition{|num| num < 0}.yield_self {|nums_ptn| [nums_ptn[0].size, nums_ptn[1].size]}.max}
end
p maximum_count(nums)