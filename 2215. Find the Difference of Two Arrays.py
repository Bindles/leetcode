#* 2215. Find the Difference of Two Arrays
# nums1 = [1,2,3]
# nums2 = [2,4,6]
nums1 = [1,2,3,3]
nums2 = [1,1,2,2]
#* SOL
class Solution:
    def findDifference(self, nums1, nums2):
        return [list(set(nums1) - set(nums2)), list(set(nums2) - set(nums1))]
    
print(Solution().findDifference(nums1, nums2))






