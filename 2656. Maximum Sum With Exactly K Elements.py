#PYTHON
#* 2656. Maximum Sum With Exactly K Elements
nums = [1,2,3,4,5]
k = 3
a=5
from typing import List
#* SOL 1
class Solution:
    def maximizeSum(self, nums: List[int], k: int) -> int:
        result=0
        b=max(nums)
        for z in range(k):
            result += (b+z)
        
        return result

print(Solution().maximizeSum(nums,k))

#* SOL 1.1 OPTIMIZED
class Solution:
    def maximizeSum(self, nums: List[int], k: int) -> int:
        res = max(nums)
        for i in range(res+1,res+k):
            res += i
        return res
    
print(Solution().maximizeSum(nums,k))

#* SOL 2 | MATHS
class Solution:
    def maximizeSum(self, nums: List[int], k: int) -> int:
        max_ = max(nums)
        return (2*max_ + k - 1)*k//2
    
print(Solution().maximizeSum(nums,k))
        
#* SOL 2.1 | MATHS
class Solution:
    def maximizeSum(self, nums: List[int], k: int) -> int:
        max_ = max(nums)
        return k * max_ + k * (k-1) // 2
    
print(Solution().maximizeSum(nums,k))





# 1 5 
# 2 11 1
# 3 18 3
# 4 26 6
# 5 35 10