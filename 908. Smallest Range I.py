#PYTHON
#* 908. Smallest Range I
nums = [0,10]
k = 2
class Solution:
    def smallestRangeI(self, nums, k):
        return max(max(nums) - min(nums) - 2 * k, 0)
    
print(Solution().smallestRangeI(nums,k))