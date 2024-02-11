# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  target = nums.sum - x
  n = nums.size
  p n
  return n if target == 0
  
  current_sum = 0
  left = 0
  right = 0
  max_window_size = 0
        
  while right < n
    current_sum += nums[right]
    
    while left < right && current_sum > target
      current_sum -= nums[left]
      left += 1
    end
    
    if current_sum == target
      max_window_size = [max_window_size, right - left + 1].max
    end
    
    right += 1
  end

  max_window_size == 0 ? -1 : n - max_window_size
end

p min_operations([3, 2, 20, 1, 1, 3], 10)




# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  target = nums.sum - x

  return nums.length if target.zero?

  prefix = { 0 => -1 }
  sum = 0
  longest = -1
  nums.each_with_index do |num, index|
      sum += num
      
      if prefix[sum - target]
          # puts "processing #{num}, target is #{target}. found: #{prefix}, looked for #{sum-target}"
          longest = [longest, index - prefix[sum - target]].max
      end

      prefix[sum] = index 
  end

  if longest < 0
      -1
  else
      nums.length - longest
  end
end