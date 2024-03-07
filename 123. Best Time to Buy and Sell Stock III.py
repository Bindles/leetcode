#PYTHON
#*123. Best Time to Buy and Sell Stock III
prices = [3,3,5,0,0,3,1,4]
class Solution:
    def maxProfit(self, prices):
        b, c, d, e = 100000, 0, -100000, 0
        for price in prices:
            if e < d + price:
                e = d + price
            if d < c - price:
                d = c - price
            if price - b > c:
                c = price - b
            if price < b:
                b = price
        return max(-b,c,d,e)
s=Solution()
print(s.maxProfit(prices))
