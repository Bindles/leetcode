#* 283. Move Zeroes
nums = [0,1,0,3,12]
from typing import List
class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        c=0
        for num in nums:
            if num != 0:
                nums[c] = num
                c+=1

        for j in range(c, len(nums)):
            nums[j] = 0

        return nums # [1,3,12,0,0] | DONT USE IN LC
        
print(Solution().moveZeroes(nums))