from typing import List

class Solution:
    def minimumMoves(self, nums: List[int], k: int, maxChanges: int) -> int:
        n = len(nums)
        ones_indices = [i for i in range(n) if nums[i] == 1]
        
        prefix_sum = [0] * (n + 1)
        for i in range(1, n + 1):
            prefix_sum[i] = prefix_sum[i - 1] + nums[i - 1]
        
        dp = [[float('inf')] * (len(ones_indices) + 1) for _ in range(len(ones_indices) + 1)]
        dp[0][0] = 0
        
        for i in range(1, len(ones_indices) + 1):
            for j in range(i, len(ones_indices) + 1):
                dp[i][j] = dp[i - 1][j - 1]
                ones_between = prefix_sum[ones_indices[j - 1] + 1] - prefix_sum[ones_indices[i - 1]]
                dp[i][j] = min(dp[i][j], dp[i][j - 1] + ones_between)
        
        result = float('inf')
        for i in range(len(ones_indices)):
            if i + k - 1 < len(ones_indices):
                result = min(result, dp[i][i + k - 1])
        return result + maxChanges

# Example usage:
solution = Solution()
print(solution.minimumMoves([1,1,0,0,0,1,1,0,0,1], 3, 1))  # Output: 3
print(solution.minimumMoves([0,0,0,0], 2, 3))            # Output: 4


# Test cases
sol = Solution()
print(sol.minimumMoves([1,1,0,0,0,1,1,0,0,1], 3, 1)) # Output: 3
print(sol.minimumMoves([0,0,0,0], 2, 3)) # Output: 4
