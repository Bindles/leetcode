from typing import List
class Solution:
    def countAlternatingSubarrays(self, nums: List[int]) -> int:
        count = 1
        result = 0
        
        for i in range(1, len(nums)):
            if nums[i] != nums[i - 1]:
                count += 1
            else:
                result += count * (count + 1) // 2
                count = 1
                
        result += count * (count + 1) // 2
        return result

# Test cases
solution = Solution()
print(solution.countAlternatingSubarrays([0,1,1,1])) # Output: 5
print(solution.countAlternatingSubarrays([1,0,1,0])) # Output: 10





from typing import List
