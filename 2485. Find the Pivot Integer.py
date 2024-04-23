#PYTHON
#* 2485. Find the Pivot Integer
n = 8
import math
#*
class Solution:
    def pivotInteger(self, n: int) -> int:
        if n == 1:
            return 1
        for i in range(1, n):
            if sum(range(1, i+1)) == sum(range(i, n+1)):
                return i
        return -1 

print(Solution().pivotInteger(n))

#*
class Solution:
    def pivotInteger(self, n: int) -> int:
        if n == 1:
            return 1
        return next((i for i in range(1, n) if sum(range(1, i+1)) == sum(range(i, n+1))), -1)

print(Solution().pivotInteger(n))

#*
class Solution:
    def pivotInteger(self, n: int) -> int:
        x = math.sqrt((n * n + n) / 2)
        return int(x) if x == int(x) else -1

print(Solution().pivotInteger(n))



#* WORKING . . .
class Solution:
    def pivotInteger(self, n: int) -> int:
        for num in range(0, n+1):
            print(num)
