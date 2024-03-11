from typing import List
from math import inf
class Solution:
    def maximumStrength(self, nums: List[int], K: int) -> int:
        n = len(nums)
        dp = [0]*(n+1)
        for k in range(1, K+1):
            sign = (-1)**(K-k)
            dp_prevk = dp.copy()

            for i in range(n-1,-1,-1):
                dp[i] = max(sign * nums[i] * k + dp[i+1],
                            sign * nums[i] * k + dp_prevk[i+1])

            dp[n-k+1] = -inf
        return max(dp)
    
# Test cases
print(Solution().maximumStrength([1,2,3,-1,2], 3))  # Expected: 22
print(Solution().maximumStrength([12,-2,-2,-2,-2], 5))  # Expected: 64
print(Solution().maximumStrength([-1, -2, -3], 1))  # Expected: -1
print(Solution().maximumStrength([-99, 85], 1))  # Expected: 85
print(Solution().maximumStrength([2,-76,77,-30,5,-96,24], 3))  # Expected: 497
print('*')

def maximumStrength(nums: List[int], K: int) -> int:
    n = len(nums)

    # For 0 disjoint arrays starting at each of i's
    dp = [0]*(n+1)

    # Now build bottom up, for k = 1, 2, ..., K
    for k in range(1, K+1):
        # Subarray sign in the expression. `(-1)i+1` in (-1)^(i+1) * sum[i] * (x - i + 1)
        # ex: First subarray will be at k=K => sign = 1;
        #     Second subarray will be at k=K-1 => sign = 2
        sign = (-1)**(K-k)
        dp_prevk = dp.copy()

        # Iterate for each possible starting point for the subarrays
        for i in range(n-1,-1,-1):
            # Starting at the ith element two options are possible
            # 1) Either extend the subarray starting at i+1 
            #   = sign * k * (nums[i] + nums[i+1] + ...) + ...
            #   = sign * k * nums[i] + sign * k * (nums[i+1] + ...) + ...
            #   = sign * k * nums[i] + remaining k terms from i+1
            #   = sign * k * nums[i] + dp[i+1]
            # 2) Dont extend the subarray and only consider the ith elment in the subarray 
            #   = sign * k * nums[i] + remaining k-1 terms starting from i+1
            #   = sign * k * nums[i] + dp_prevk[i+1]
            dp[i] = max(sign * nums[i] * k + dp[i+1],
                        sign * nums[i] * k + dp_prevk[i+1])

        # You cannot start beyond n-k+1 and have k subarrays, so mark it as impossible
        dp[n-k+1] = -inf

    return max(dp)

# Test cases
print(maximumStrength([1,2,3,-1,2], 3))  # Expected: 22
print(maximumStrength([12,-2,-2,-2,-2], 5))  # Expected: 64
print(maximumStrength([-1, -2, -3], 1))  # Expected: -1
print(maximumStrength([-99, 85], 1))  # Expected: 85
print(maximumStrength([2,-76,77,-30,5,-96,24], 3))  # Expected: 497

