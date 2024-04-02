#PYTHON
#* 3010. Divide an Array Into Subarrays With Minimum Cost I
nums = [1,2,3,12]
from typing import List
class Solution:
    def minimumCost(self, nums: List[int]) -> int:
        return nums[0] + sum(sorted(nums[1:])[:2])
    
print(Solution().minimumCost(nums))
        
