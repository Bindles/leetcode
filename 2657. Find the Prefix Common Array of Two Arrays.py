#* 2657. Find the Prefix Common Array of Two Arrays
A = [1,3,2,4]
B = [3,1,2,4]
from typing import List
#* SOL
class Solution:
    def findThePrefixCommonArray(self, A: List[int], B: List[int]) -> List[int]:
        return [len(set(A[:i]) & set(B[:i])) for i in range(1, len(A) + 1)]

print(Solution().findThePrefixCommonArray(A,B))