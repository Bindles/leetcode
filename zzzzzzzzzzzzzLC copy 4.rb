def count_matching_subarrays(nums, pattern)
  n = nums.length
  pal = pattern.length
  count = 0
  
  (0..n - pal).each do |i|
    match = true
    
    (0..pal - 1).each do |j|
      if pattern[j] == 1
        match = false if nums[i + j + 1] <= nums[i + j]
      elsif pattern[j] == -1
        match = false if nums[i + j + 1] >= nums[i + j]
      elsif pattern[j] == 0
        match = false if nums[i + j + 1] != nums[i + j]
      end
      break unless match
    end
    
    count += 1 if match
  end
  
  count
end






# Test cases
puts count_matching_subarrays([1,2,3,4,5,6], [1,1]) # Output: 4
puts count_matching_subarrays([1,4,4,1,3,5,5,3], [1,0,-1]) # Output: 2
