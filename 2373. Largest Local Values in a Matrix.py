#* 2373. Largest Local Values in a Matrix
grid = [[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]
from typing import List
#*
class Solution:
    def largestLocal(self, grid: List[List[int]]) -> List[List[int]]:
        return [[max([grid[i+o1][j+o2] for o1 in range(-1,2) for o2 in range(-1, 2)]) for j in range(1,len(grid)-1)] for i in range(1,len(grid)-1)]
  
print(Solution().largestLocal(grid))