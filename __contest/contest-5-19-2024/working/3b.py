from typing import List

class Solution:
    def sumDigitDifferences(self, nums: List[int]) -> int:
        num_digits = len(str(nums[0]))
        digit_count = [[0] * 10 for _ in range(num_digits)]
        
        for num in nums:
            str_num = str(num)
            for i, digit in enumerate(str_num):
                digit_count[i][int(digit)] += 1
        
        total_diff_sum = 0
        n = len(nums)
        
        for i in range(num_digits):
            for d in range(10):
                count_d = digit_count[i][d]
                total_diff_sum += count_d * (n - count_d)
        
        total_diff_sum //= 2
        
        return total_diff_sum

# Test the function with the example test cases
solution = Solution()

# Example 1
nums1 = [13, 23, 12]
print(solution.sumDigitDifferences(nums1))  # Output: 4

# Example 2
nums2 = [10, 10, 10, 10]
print(solution.sumDigitDifferences(nums2))  # Output: 0
