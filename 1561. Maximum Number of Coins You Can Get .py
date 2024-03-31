#PYTHON
#* 1561. Maximum Number of Coins You Can Get
piles = [2,4,1,2,7,8]
# @param {Integer[]} piles
# @return {Integer}
#* MY SOL
class Solution:
    def maxCoins(self, piles):
        return sum(sorted(piles)[len(piles)//3::2])
        
print(Solution().maxCoins(piles))