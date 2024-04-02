from typing import List

class Solution:
    def isArraySpecial(self, nums: List[int], queries: List[List[int]]) -> List[bool]:
        n = len(nums)
        
        if n == 1:
            # If there is only one element, every subarray is trivially special
            return [True] * len(queries)
        
        # Step 1: Precompute prefix sum of parity differences
        prefix_diff = [0] * n
        for i in range(1, n):
            # Increment prefix_diff if current pair has different parity
            prefix_diff[i] = prefix_diff[i - 1] + ((nums[i - 1] % 2) != (nums[i] % 2))
        
        # Step 2: Answer each query using the precomputed prefix sum array
        results = []
        for fromi, toi in queries:
            if fromi == toi:
                # If the subarray has only one element, it's trivially special
                results.append(True)
            else:
                # Check the number of different parity pairs in the range
                is_special = (prefix_diff[toi] - prefix_diff[fromi]) == (toi - fromi)
                results.append(is_special)
        
        return results

# Test the function with the example test cases
solution = Solution()

# Example 1
nums1 = [3, 4, 1, 2, 6]
queries1 = [[0, 4]]
print(solution.isArraySpecial(nums1, queries1))  # Output: [False]

# Example 2
nums2 = [4, 3, 1, 6]
queries2 = [[0, 2], [2, 3]]
print(solution.isArraySpecial(nums2, queries2))  # Output: [False, True]
