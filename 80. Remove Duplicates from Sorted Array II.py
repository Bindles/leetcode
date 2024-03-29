#PYTHON
#* 80. Remove Duplicates from Sorted Array II
nums = [1,1,1,2,2,3]
from collections import Counter
#* MY SOL CONVERTED FROM RUBY TOUGH LOL
class Solution:
    def removeDuplicates(self, nums):
        tally = Counter(nums)
        new_nums = []
        for num in nums:
            if tally[num] > 2:
                tally[num] -= 1
            else:
                new_nums.append(num)
        nums[:] = new_nums
        return len(nums)
        
print(Solution().removeDuplicates(nums))
            
#*TOP SOL
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        res=2
        for i in range(2,len(nums)):
            if nums[i]!=nums[res-2]:nums[res]=nums[i];res+=1
        return res

print(Solution().removeDuplicates(nums))