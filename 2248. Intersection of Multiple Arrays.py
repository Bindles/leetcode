#PYTHON
#* 2248. Intersection of Multiple Arrays
nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
from typing import List
#* SOL
class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        return sorted(set(nums[0]).intersection(*nums[1:]))

print(Solution().intersection(nums))

#* SOL LONG
class Solution:
    def intersection(self, nums: List[List[int]]) -> List[int]:
        result = set(nums[0])
        for num_list in nums[1:]:
            result &= set(num_list)
        return sorted(result)

print(Solution().intersection(nums))


