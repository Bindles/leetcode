# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
  n = nums.length
  left_sum = Array.new(n, 0)
  right_sum = Array.new(n, 0)

  # Calculate left sum
  current_sum = 0
  nums.each_with_index do |num, i|
    left_sum[i] = current_sum
    current_sum += num
  end
  puts "Left Sum: #{left_sum}"

  # Calculate right sum
  current_sum = 0
  (n - 1).downto(0) do |i|
    right_sum[i] = current_sum
    current_sum += nums[i]
  end
  puts "Right Sum: #{right_sum}"

  # Calculate absolute differences
  answer = Array.new(n, 0)
  (0...n).each do |i|
    answer[i] = (left_sum[i] - right_sum[i]).abs
  end

  answer
end

# Example usage:
nums1 = [10, 4, 8, 3]
output1 = left_right_difference(nums1)
puts "Output 1: #{output1}"  # Output: [15, 1, 11, 22]

nums2 = [1]
output2 = left_right_difference(nums2)
puts "Output 2: #{output2}"  # Output: [0]


#NO PUTS STATEMENTS
def left_right_difference(nums)
  n = nums.length
  left_sum = Array.new(n, 0)
  right_sum = Array.new(n, 0)

  # Calculate left sum
  current_sum = 0
  nums.each_with_index do |num, i|
    left_sum[i] = current_sum
    current_sum += num
  end

  # Calculate right sum
  current_sum = 0
  (n - 1).downto(0) do |i|
    right_sum[i] = current_sum
    current_sum += nums[i]
  end

  # Calculate absolute differences
  answer = Array.new(n, 0)
  (0...n).each do |i|
    answer[i] = (left_sum[i] - right_sum[i]).abs
  end

  answer
end