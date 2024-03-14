def max_two_non_overlapping_subarrays(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0

  # Calculate the maximum sum of a subarray of size k from left to right
  max_sum_left = Array.new(nums.length, 0)
  window_sum = 0
  (0...nums.length).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i - k] if i >= k
    max_sum_left[i] = [window_sum, (i > 0 ? max_sum_left[i - 1] : 0)].max
  end

  # Calculate the maximum sum of a subarray of size k from right to left
  max_sum_right = Array.new(nums.length, 0)
  window_sum = 0
  (nums.length - 1).downto(0).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i + k] if i + k < nums.length
    max_sum_right[i] = [window_sum, (i < nums.length - 1 ? max_sum_right[i + 1] : 0)].max
  end

  # Find the maximum sum of two non-overlapping subarrays
  (k...nums.length - k + 1).each do |i|
    max_sum = [max_sum, max_sum_left[i - 1] + max_sum_right[i]].max
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Original Array: #{nums}"
puts "Maximum sum of two non-overlapping subarrays: #{max_two_non_overlapping_subarrays(nums, k)}"


def max_two_non_overlapping_subarrays(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0
  window_sum = 0
  max_sum_left = Array.new(nums.length, 0)
  max_sum_right = Array.new(nums.length, 0)

  # Calculate the maximum sum of a subarray of size k from left to right
  (0...nums.length).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i - k] if i >= k
    max_sum_left[i] = [window_sum, (i > 0 ? max_sum_left[i - 1] : 0)].max
  end

  window_sum = 0

  # Calculate the maximum sum of a subarray of size k from right to left
  (nums.length - 1).downto(0).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i + k] if i + k < nums.length
    max_sum_right[i] = [window_sum, (i < nums.length - 1 ? max_sum_right[i + 1] : 0)].max
  end

  # Calculate the maximum sum of two non-overlapping subarrays
  (k...nums.length - k + 1).each do |i|
    max_sum = [max_sum, max_sum_left[i - 1] + max_sum_right[i]].max
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Original Array: #{nums}"
puts "Maximum sum of two non-overlapping subarrays: #{max_two_non_overlapping_subarrays(nums, k)}"





def max_two_non_overlapping_subarrays(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0

  # Calculate the maximum sum of a subarray of size k from left to right
  max_sum_left = Array.new(nums.length, 0)
  window_sum = 0
  (0...nums.length).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i - k] if i >= k
    max_sum_left[i] = [window_sum, (i > 0 ? max_sum_left[i - 1] : 0)].max
  end

  # Calculate the maximum sum of a subarray of size k from right to left
  max_sum_right = Array.new(nums.length, 0)
  window_sum = 0
  (nums.length - 1).downto(0).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i + k] if i + k < nums.length
    max_sum_right[i] = [window_sum, (i < nums.length - 1 ? max_sum_right[i + 1] : 0)].max
  end

  # Find the maximum sum of two non-overlapping subarrays
  (k...nums.length - k + 1).each do |i|
    max_sum = [max_sum, max_sum_left[i - 1] + max_sum_right[i]].max
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Original Array: #{nums}"
puts "Maximum sum of two non-overlapping subarrays: #{max_two_non_overlapping_subarrays(nums, k)}"


def max_two_non_overlapping_subarrays(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0

  # Calculate the maximum sum of a subarray of size k from left to right
  max_sum_left = Array.new(nums.length, 0)
  window_sum = 0
  (0...nums.length).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i - k] if i >= k
    max_sum_left[i] = [window_sum, (i > 0 ? max_sum_left[i - 1] : 0)].max
  end

  # Reset window_sum and calculate the maximum sum of a subarray of size k from right to left
  window_sum = 0
  (nums.length - 1).downto(0).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i + k] if i + k < nums.length
    right_sum = window_sum
    left_sum = i - k >= 0 ? max_sum_left[i - k] : 0
    # Calculate the maximum sum of two non-overlapping subarrays
    max_sum = [max_sum, left_sum + right_sum].max
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Original Array: #{nums}"
puts "Maximum sum of two non-overlapping subarrays: #{max_two_non_overlapping_subarrays(nums, k)}"


def max_two_non_overlapping_subarrays(nums, k)
  return 0 if nums.empty? || k <= 0 || k > nums.length

  max_sum = 0
  window_sum = 0
  max_sum_left = Array.new(nums.length, 0)

  # Calculate the maximum sum of a subarray of size k from left to right
  (0...nums.length).each do |i|
    window_sum += nums[i]
    window_sum -= nums[i - k] if i >= k
    max_sum_left[i] = [window_sum, (i > 0 ? max_sum_left[i - 1] : 0)].max
  end

  window_sum = 0

  # Calculate the maximum sum of two non-overlapping subarrays
  (k...nums.length - k).each do |i|
    window_sum += nums[i]
    max_sum = [max_sum, window_sum + max_sum_left[i - k]].max
  end

  max_sum
end

# Example usage:
nums = [1, 4, 2, 10, 2, 3, 1, 0, 20, 7, 14, 5, 9]
k = 3
puts "Original Array: #{nums}"
puts "Maximum sum of two non-overlapping subarrays: #{max_two_non_overlapping_subarrays(nums, k)}"
