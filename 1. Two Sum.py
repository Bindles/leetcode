#PYTHON
#* 1. Two Sum
nums = [2,7,11,15]; target = 9
from typing import List
#* MY SOL 1
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums)):
            for j in range(i+1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i,j]
                
print(Solution().twoSum(nums, target)) #[0, 1]
                
#* MY SOL 1.1 | ONE LINER
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        return next(([i, j] for i in range(len(nums)) for j in range(i + 1, len(nums)) if nums[i] + nums[j] == target))
                                      #== target), None) <= if u need else

print(Solution().twoSum(nums, target))

#* ENUMERATE WITH_INDEX FOR SHOW/LEARNING | NOT PROPER
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i, num in enumerate(nums):
            for j in range(i+1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i,j]
                
print(Solution().twoSum(nums, target))