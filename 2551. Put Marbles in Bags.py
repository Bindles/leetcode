#* 2551. Put Marbles in Bags
weights = [1,3,5,1]; k = 2
from typing import List
class Solution:
    def putMarbles(self, weights: List[int], k: int) -> int:
        if (k == 1):
             return 0
        w = [weights[i] + weights[i+1] for i in range(len(weights)-1)]
        w.sort()
        return sum(w[-(k-1):]) - sum(w[:k-1])

print(Solution().putMarbles(weights,k))
