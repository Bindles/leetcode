#* 1732. Find the Highest Altitude
gain = [-5,1,5,0,-7]
from typing import List
#*
class Solution:
  def largestAltitude(self, gain: List[int]) -> int:
    cur = highest = 0
    for x in gain:
      cur +=x
      highest = max(cur, highest)

    return highest
    
print(Solution().largestAltitude(gain))
#*
class Solution:
  def largestAltitude(self, gain: List[int]) -> int:
    cur = highest = 0
    for x in gain:
      cur +=x
      if cur > highest:
        highest = cur
        
    return highest
    
print(Solution().largestAltitude(gain))