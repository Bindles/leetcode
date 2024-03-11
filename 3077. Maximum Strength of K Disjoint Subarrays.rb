#*3077. Maximum Strength of K Disjoint Subarrays
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
#* 1 ARRAY
def maximum_strength(nums, k)
  dp = Array.new(k) { Array.new(nums.length, -Float::INFINITY) }
  dp[k - 1][0] = nums[0] * k

  (1...nums.length).each do |i|
    (k - 1).downto(0) do |j|
      dp[j][i] = [dp[j][i - 1], (j + 1 < k ? dp[j + 1][i - 1] : 0)].max + nums[i] * (j + 1) * ((j & 1 == 1) ? -1 : 1)
    end
  end
  dp[0].max
end
p maximum_strength([1,2,3,-1,2], 3);p '=>22'
p maximum_strength([12,-2,-2,-2,-2], 5);p '=>64'
p maximum_strength([-1,-2,-3], 1);p '=>-1'

#* 2 ARRAY
def maximum_strength(nums, k)
  dp0 = Array.new(k) { Array.new(nums.length, -Float::INFINITY) }
  dp1 = Array.new(k) { Array.new(nums.length, -Float::INFINITY) }
  dp1[k - 1][0] = nums[0] * k

  (1...nums.length).each do |i|
    (k - 1).downto(0) do |j|
      dp0[j][i] = [dp0[j][i - 1], dp1[j][i - 1]].max
        dp1[j][i] = [dp1[j][i - 1], dp0[j + 1]&.[](i) || 0].max + nums[i] * (j + 1) * ((j & 1 == 1) ? -1 : 1)

    end
  end
  dp1[0].max
end



# #*RUBY
# def maximum_strength(nums, k)
#   dp = Array.new(k) { Array.new(nums.length, -Float::INFINITY) }
#   dp[k - 1][0] = nums[0] * k

#   (1...nums.length).each do |i|
#     (k - 1).downto(0) do |j|
#       dp[j][i] = [dp[j][i - 1], (j + 1 < k ? dp[j + 1][i - 1] : 0)].max + nums[i] * (j + 1) * ((j & 1 == 1) ? -1 : 1)
#     end
#   end
#   dp[0].max
# end
# p maximum_strength([1,2,3,-1,2], 3);p '=>22'
# p maximum_strength([12,-2,-2,-2,-2], 5);p '=>64'
# p maximum_strength([-1,-2,-3], 1);p '=>-1'

# #*PYTHON
# class Solution:
#   def maximumStrength(self, nums, k):
#       dp = [[-float('inf')] * len(nums) for _ in range(k)]
#       dp[k - 1][0] = nums[0] * k

#       for i in range(1, len(nums)):
#           for j in range(k - 1, -1, -1):
#               dp[j][i] = max(dp[j][i - 1], (dp[j + 1][i - 1] if j + 1 < k else 0)) + nums[i] * (j + 1) * (-1 if j & 1 == 1 else 1)

#       return max(dp[0])
  
# s=Solution()
# print(s.maximumStrength([1,2,3,-1,2], 3), 22) 
# print(s.maximumStrength([12,-2,-2,-2,-2], 5), 64) 
# print(s.maximumStrength([-1, -2, -3], 1), -1) 
# print(s.maximumStrength([-99, 85], 1), 85)
# print(s.maximumStrength([2,-76,77,-30,5,-96,24], 3), 497)