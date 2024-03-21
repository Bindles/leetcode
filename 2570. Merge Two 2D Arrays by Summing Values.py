#* 2570. Merge Two 2D Arrays by Summing Values
#* LEARN => NUM GROUPING NUM MERGING MERGE TO_H GROUP_BY COMBINE ARRAY ARRAY MERGING ARRAY TO HASH 
nums1 = [[1,2],[2,3],[4,5]]
nums2 = [[1,4],[3,2],[4,1]]
from typing import List
from collections import defaultdict
#* SOL
class Solution:
    def mergeArrays(self, nums1: List[List[int]], nums2: List[List[int]]) -> List[List[int]]:
        merged_dict = defaultdict(int)
        for key, value in nums1 + nums2:
            merged_dict[key] += value

        result = sorted(merged_dict.items())
        return result
    
print(Solution().mergeArrays(nums1,nums2))
        
#*
class Solution:
    def mergeArrays(self, nums1: List[List[int]], nums2: List[List[int]]) -> List[List[int]]:
      merged_dict = {}
      for k, v in nums1:
          merged_dict[k] = merged_dict.get(k, 0) + v
      for k, v in nums2:
          merged_dict[k] = merged_dict.get(k, 0) + v
      return sorted(merged_dict.items())
    
print(Solution().mergeArrays(nums1,nums2))
    

