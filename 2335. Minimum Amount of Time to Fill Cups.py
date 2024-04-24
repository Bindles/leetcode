#PYTHON
#* 2335. Minimum Amount of Time to Fill Cups
amount = [5,4,4]
from typing import List
from math import ceil
#* FINALLY GOT THIS AHHHH
class Solution:
    def fillCups(self, amount: List[int]) -> int:
        return max(max(amount), ceil(sum(amount)/2)) 

print(Solution().fillCups(amount))



    