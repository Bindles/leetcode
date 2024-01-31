# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums = [1,2,1])
  nums+nums
end
p get_concatenation


def get_concatenation(nums = [1,2,1])
  [nums, nums].flatten
end
p get_concatenation


def get_concatenation(nums = [1,2,1])
  nums.concat(nums)
end
p get_concatenation