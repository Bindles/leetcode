
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#**MY SOL 1
def partition_array(nums = [3,6,1,2,5], k = 2)
  nums.sort!
  partitions = 1
  remaining_capacity = k
  
  (1...nums.size).each do |i|
      difference = nums[i] - nums[i - 1]
      if difference > remaining_capacity
          remaining_capacity = k
          partitions += 1
      else
          remaining_capacity -= difference
      end
  end
  partitions
end

#MY SOL 2
def partition_array(nums = [3,6,1,2,5], k = 2)
  nums.sort!
  count = 1
  min = nums.first
  nums.each do |num|
      if num - min > k
          count += 1
          min = num
      end
  end
  count
end

#MY SOL 2 | DIFF LOOP
def partition_array(nums = [3,6,1,2,5], k = 2)
  nums.sort!
  count = 1
  min = nums.first
  (1...nums.length).each do |i|
      if nums[i] - min > k
          count += 1
          min = nums[i]
      end
  end
  count
end
p partition_array

#SOL 3 | GREEDY
def partition_array(nums = [3,6,1,2,5], k = 2)
  n = nums.size
  nums.sort!

  prev = nums[0]
  result = 1
  
  1.upto(n - 1) do |i|
    num = nums[i]
    if num - prev > k
      prev = num
      result += 1
    end
  end
  result
end



