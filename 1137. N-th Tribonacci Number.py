#PYTHON
#* 1137. N-th Tribonacci Number
n = 6
# @param {Integer} n
# @return {Integer}
#*
class Solution:
    def tribonacci(self, n: int) -> int:
        a,b,c=0,1,1
        if n < 3:
            return [a,b,c][n]
        for _ in range(0, n-2):
            a,b,c = b,c,a+b+c
        return c
    
print(Solution().tribonacci(n))
        