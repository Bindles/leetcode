#PYTHON
#* 2643. Row With Maximum Ones
mat = [[0,0,0],[0,1,1]]
from typing import List
#* MY SOL | OPT
class Solution:
    def rowAndMaximumOnes(self, mat: List[List[int]]) -> List[int]:
        result = [(i, row.count(1)) for i, row in enumerate(mat)]
        max_row = max(result, key=lambda x: x[1])
        return [max_row[0], max_row[1]]
    
print(Solution().rowAndMaximumOnes(mat))

#* SOL | CONCISE | (1,2)
class Solution:
    def rowAndMaximumOnes(self, mat: List[List[int]]) -> List[int]:
        return max(((i, row.count(1)) for i, row in enumerate(mat)), key=lambda x: x[1])
    
print(Solution().rowAndMaximumOnes(mat))

#* SOL | CONCISE | [1,2]
class Solution:
    def rowAndMaximumOnes(self, mat: List[List[int]]) -> List[int]:
      max_row = max(((i, row.count(1)) for i, row in enumerate(mat)), key=lambda x: x[1])
      return list(max_row)
    
print(Solution().rowAndMaximumOnes(mat))

