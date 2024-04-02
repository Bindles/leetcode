from typing import List

class Solution:
    def sumDigitDifferences(self, nums: List[int]) -> int:
        n = len(nums)
        num_len = len(str(nums[0]))
        digit_freq = [[0] * 10 for _ in range(num_len)]  # Count of each digit at each position
        
        # Count the frequency of digits at each position
        for num in nums:
            str_num = str(num)
            for i, digit in enumerate(str_num):
                digit_freq[i][int(digit)] += 1
        
        total_diff = 0
        
        # Calculate the digit differences for each pair of numbers
        for i in range(n):
            for j in range(i+1, n):
                diff = 0
                for k in range(num_len):
                    diff += abs(digit_freq[k][int(str(nums[i])[k])] - digit_freq[k][int(str(nums[j])[k])])
                total_diff += diff
        
        return total_diff

# Test cases
solution = Solution()
print(solution.sumDigitDifferences([13,23,12]))  # Output: 4
print(solution.sumDigitDifferences([10,10,10,10]))  # Output: 0


class Solution:
    def sumDigitDifferences(self, nums: List[int]) -> int:
        n = len(nums)
        num_len = len(str(nums[0]))
        digit_freq = [[0] * 10 for _ in range(num_len)]
        
        for num in nums:
            str_num = str(num)
            for i, digit in enumerate(str_num):
                digit_freq[i][int(digit)] += 1
        
        total_diff = 0
        
        for i in range(n):
            for j in range(i+1, n):
                diff = 0
                for k in range(num_len):
                    diff += abs(digit_freq[k][int(str(nums[i])[k])] - digit_freq[k][int(str(nums[j])[k])])
                total_diff += diff
        
        return total_diff