#PYTHON
#*3077. Maximum Strength of K Disjoint Subarrays
class Solution:
    def maximumStrength(self, nums, k):
        dp = [[-float('inf')] * len(nums) for _ in range(k)]
        dp[k - 1][0] = nums[0] * k

        for i in range(1, len(nums)):
            for j in range(k - 1, -1, -1):
                dp[j][i] = max(dp[j][i - 1], (dp[j + 1][i - 1] if j + 1 < k else 0)) + nums[i] * (j + 1) * (-1 if j & 1 == 1 else 1)

        return max(dp[0])
    
s=Solution()
print(s.maximumStrength([1,2,3,-1,2], 3), 22) 
print(s.maximumStrength([12,-2,-2,-2,-2], 5), 64) 
print(s.maximumStrength([-1, -2, -3], 1), -1) 
print(s.maximumStrength([-99, 85], 1), 85)
print(s.maximumStrength([2,-76,77,-30,5,-96,24], 3), 497)
