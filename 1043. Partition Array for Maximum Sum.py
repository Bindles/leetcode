# PYTHON 
#* 1043. Partition Array for Maximum Sum
arr = [1,4,1,5,7,3,6,1,9,9,3]
k = 4

#* SOL 1 | ITER DP
class Solution(object):
    def maxSumAfterPartitioning(self, arr, k):
      dp = [0] * len(arr)

      for i in range(len(arr) - 1, -1, -1):
        max_val=0
        res=0

        for j in range(i, min(len(arr), i + k)):
          max_val = max(max_val, arr[j])
          res = max(res, (j - i + 1) * max_val + (dp[j + 1] if j + 1 < len(arr) else 0))

        dp[i] = res
      return dp[0]
    
print(Solution().maxSumAfterPartitioning(arr, k), 83)