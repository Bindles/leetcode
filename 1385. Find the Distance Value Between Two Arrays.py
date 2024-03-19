#* 1385. Find the Distance Value Between Two Arrays
arr1 = [4,5,8]
arr2 = [10,9,1,8]
d = 2
from typing import List
#* SOL 1
class Solution:
    def findTheDistanceValue(self, arr1: List[int], arr2: List[int], d: int) -> int:
        return sum(all(abs(num2 - num) > d for num2 in arr2) for num in arr1)
    
print(Solution().findTheDistanceValue(arr1, arr2, d))