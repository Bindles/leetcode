#PYTHON
#* 338. Counting Bits
n=5
# @param {Integer} n
# @return {Integer[]}
class Solution:
    def countBits(self, n):
        return [bin(num).count('1') for num in range(n+1)]
    
print(Solution().countBits(n))