from typing import List

class Solution:
    def sumDigitDifferences(self, nums: List[int]) -> int:
        def digit_difference(num1: int, num2: int) -> int:
            # Convert numbers to string to compare digit by digit
            str1, str2 = str(num1), str(num2)
            diff_count = 0
            for d1, d2 in zip(str1, str2):
                if d1 != d2:
                    diff_count += 1
            return diff_count
        
        total_diff_sum = 0
        n = len(nums)
        
        # Iterate through all pairs (i, j) where i < j
        for i in range(n):
            for j in range(i + 1, n):
                total_diff_sum += digit_difference(nums[i], nums[j])
        
        return total_diff_sum

# Test the function with the example test cases
solution = Solution()

# Example 1
nums1 = [13, 23, 12]
print(solution.sumDigitDifferences(nums1))  # Output: 4

# Example 2
nums2 = [10, 10, 10, 10]
print(solution.sumDigitDifferences(nums2))  # Output: 0
