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