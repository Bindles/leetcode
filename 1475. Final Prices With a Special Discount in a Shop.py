#* 1475. Final Prices With a Special Discount in a Shop
prices = [8,4,6,2,3]
from typing import List
class Solution:
    def finalPrices(self, prices: List[int]) -> List[int]:
      n = len(prices)
      res=[]
      #for i, _ in enumerate(prices):
      for i in range(n):
        for j in range(i+1,n):
          if prices[j] <= prices[i]:
            res.append(prices[i] - prices[j])
            break
        else:
          res.append(prices[i])

      return res

print(Solution().finalPrices(prices))

