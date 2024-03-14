#* SLIDING WINDOW 1P
def find_subarray_with_sum(nums, target_sum)
  return [] if nums.empty?

  window_start = 0
  current_sum = 0

  (0...nums.length).each do |window_end|
    current_sum += nums[window_end]

    while current_sum > target_sum && window_start <= window_end
      current_sum -= nums[window_start]
      window_start += 1
    end

    return nums[window_start..window_end] if current_sum == target_sum
  end
  []
end

# Example usage:
nums = [1, 4, 20, 3, 10, 5]
target_sum = 33
puts "Original Array: #{nums}"
puts "Subarray with sum #{target_sum}: #{find_subarray_with_sum(nums, target_sum)}"

#* SLIDING WINDOW | 2 POINTER
def find_subarray_with_sum(nums, target_sum)
  return [] if nums.empty?

  left = 0
  current_sum = 0

  (0...nums.length).each do |right|
    current_sum += nums[right]

    while current_sum > target_sum && left < right
      current_sum -= nums[left]
      left += 1
    end

    return nums[left..right] if current_sum == target_sum
  end

  []
end

# Example usage:
nums = [1, 4, 20, 3, 10, 5]
target_sum = 33
puts "Original Array: #{nums}"
puts "Subarray with sum #{target_sum}: #{find_subarray_with_sum(nums, target_sum)}"
