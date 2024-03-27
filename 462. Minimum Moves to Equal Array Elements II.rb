#* 462. Minimum Moves to Equal Array Elements II
nums = [1,10,2,9]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOL 2
def min_moves2(nums)
  nums.sort!
  m = nums[nums.size / 2]
  nums.sum {|num| (num - m).abs }
end
p min_moves2(nums)

#* MY SOL 1
def min_moves2(nums)
  nums.sort!
  #nums.size % 2 == 0 ? m = (nums[nums.size/2-1] + nums[nums.size/2])/2 : m = nums[nums.size/2]
  m = nums[nums.size / 2]
  nums.reduce(0){|acc,num| acc + (m - num).abs}
end
p min_moves2(nums)

#* ORIGINAL SOL 1
def min_moves2(nums)
  nums.sort!
  nums.size % 2 == 0 ? m = (nums[nums.size/2-1] + nums[nums.size/2])/2 : m = nums[nums.size/2]
  nums.reduce(0){|acc,num| acc + (m - num).abs}
end
p min_moves2(nums)



#* INTERSTING OTHER SOL DOUBLE MAP
def min_moves2(nums)
    nums.sort!
    median = nums[nums.size / 2]
    (median-1 .. median+1).map {|a| nums.map {|n| (n - a).abs }.sum }.min
end
p min_moves2(nums)


#* TEST

  nums.size % 2 == 0 ? m = (nums[nums.size/2-1] + nums[nums.size/2])/2 : m = nums[nums.size/2]
  p m
 

