#PYTHON
#* 3091. Apply Operations to Make Sum of Array Greater Than or Equal to k
k = 11
import math
from math import ceil
from math import sqrt
from math import isqrt

class Solution:
    def minOperations(self, k):
        sqrt_k = math.sqrt(k)
        ceiling_sqrt_k = math.ceil(sqrt_k)
        operations_performed = k / ceiling_sqrt_k
        subtract = 1 if k % ceiling_sqrt_k == 0 else 0

        return int(ceiling_sqrt_k - 1 + operations_performed - subtract)
    
print(Solution().minOperations(k))

class Solution:
    def minOperations(self, k: int) -> int:
        m = math.ceil(math.sqrt(k))
        return m - 1 + k // m - (k % m == 0)
    
print(Solution().minOperations(k))

class Solution:
    def minOperations(self, k: int) -> int:
        p = isqrt(k)
        q = (k+p-1)//p
        return p+q-2

print(Solution().minOperations(k))

#*      
class Solution:
    def minOperations(self, k: int) -> int:
        return ceil(sqrt(k)) -1 + k //ceil(sqrt(k)) - (k%ceil(sqrt(k))==0)

print(Solution().minOperations(k))