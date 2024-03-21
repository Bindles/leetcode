#PYTHON
#* 2391. Minimum Amount of Time to Collect Garbage
garbage = ["G","P","GP","GG"]
travel = [2,4,3]

from typing import List
#* SOL 1
class Solution:
    def garbageCollection(self, garbage: List[str], travel: List[int]) -> int:
        result = 0
        for char in ['G', 'P', 'M']:
            index = max((i for i, garb in enumerate(garbage) if char in garb), default=0)
            result += sum(travel[:index])
        return result + sum(len(garb) for garb in garbage)
    
print(Solution().garbageCollection(garbage, travel))

#* SOL 1.1 | CONCISE
class Solution:
    def garbageCollection(self, garbage: List[str], travel: List[int]) -> int:
        return sum(sum(travel[:max((i for i, garb in enumerate(garbage) if char in garb), default=0)]) for char in ['G', 'P', 'M']) + sum(len(garb) for garb in garbage)
    
print(Solution().garbageCollection(garbage, travel))