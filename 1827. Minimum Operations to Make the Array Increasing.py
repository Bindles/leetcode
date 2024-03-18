#PYTHON
#* 1827. Minimum Operations to Make the Array Increasing
nums = [1,5,2,4,1]
from typing import List
#* MY SOL
class Solution:
    def minOperations(self, nums: List[int]) -> int:
        operations = 0
        for i in range(1, len(nums)):
            if nums[i] <= nums[i - 1]:
                operations += nums[i - 1] - nums[i] + 1
                nums[i] = nums[i - 1] + 1
        return operations


print(Solution().minOperations(nums))