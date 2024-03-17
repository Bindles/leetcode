#* 2206. Divide Array Into Equal Pairs
#nums = [3,2,3,2,2,2]
nums=[1,2,3,4]
# @param {Integer[]} nums
# @return {Boolean}
#* SOL
from collections import Counter
class Solution:
    def divideArray(self, nums):
        counts = Counter(nums)
        for count in counts.values():
            if count % 2 != 0:
                return False
        return True       
    
print(Solution().divideArray(nums))