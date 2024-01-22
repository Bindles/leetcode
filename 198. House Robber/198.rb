# @param {Integer[]} nums
# @return {Integer}
#MY-SOLUTION => PUTS
def rob(nums = [1, 2, 3, 1])
  puts "Input array: #{nums}"

  return 0 if nums.empty?
  puts "Array is not empty."

  n = nums.length
  puts "Number of houses: #{n}"

  return nums[0] if n == 1
  puts "Only one house, robbing it: #{nums[0]}"
  
  dp = Array.new(n, 0)
  puts "Initialized dp array: #{dp}"

  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max
  puts "Base cases: dp[0] = #{dp[0]}, dp[1] = #{dp[1]}"

  (2...n).each do |i|

    dp[i] = [dp[i-1], dp[i-2] + nums[i]].max
    puts "Calculated dp[#{i}] = #{dp[i]}"
  end

  result = [dp[-1], dp[-2]].max
  puts "Final result: #{result}"

  result
end
rob


#MY-SOLUTION-CONCISE
def rob(nums = [1, 2, 3, 1])
  return 0 if nums.empty?
  n = nums.length
  return nums[0] if n == 1

  dp = Array.new(n, 0)
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2...n).each do |i|
    dp[i] = [dp[i-1], dp[i-2] + nums[i]].max
  end

  result = [dp[-1], dp[-2]].max
  return result
end
rob


