class Solution:
    def waysToReachStair(self, k: int) -> int:
        if k <= 1:
            return 2 if k == 0 else 4
        
        # Initialize an array to store the number of ways to reach each stair
        ways = [0] * (k + 1)
        ways[0] = 1
        ways[1] = 2
        
        # Start from the 2nd stair and calculate the number of ways for each stair up to k
        for i in range(2, k + 1):
            # Calculate the number of ways using operation 1
            ways[i] += ways[i - 1]
            # Calculate the number of ways using operation 2 (jump)
            j = 2
            while i - j >= 0:
                ways[i] += ways[i - j]
                j += 2
        
        return ways[k]

# Example usage:
solution = Solution()
print(solution.waysToReachStair(0))  # Output: 2
print(solution.waysToReachStair(1))  # Output: 4
