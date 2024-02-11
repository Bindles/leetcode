def count_matching_subarrays(nums, pattern)
  count = 0
  m = pattern.length
  
  (0..nums.length - m - 1).each do |i|
    match = true
    
    (0..m - 1).each do |j|
      if pattern[j] == 1 && nums[i + j + 1] <= nums[i + j]
        match = false
        break
      elsif pattern[j] == 0 && nums[i + j + 1] != nums[i + j]
        match = false
        break
      elsif pattern[j] == -1 && nums[i + j + 1] >= nums[i + j]
        match = false
        break
      end
    end
    
    count += 1 if match
  end
  
  count
end



# Test cases
puts count_matching_subarrays([1,2,3,4,5,6], [1,1])  # Output: 4
puts count_matching_subarrays([1,4,4,1,3,5,5,3], [1,0,-1])  # Output: 2
