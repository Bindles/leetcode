#* 77. Combinations
n = 4; k = 2
# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
#* TEST
numbers = [num for num in range(1, n + 1)]
print(numbers)
from itertools import combinations
from typing import List
#* MY SOL
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        return [comb for comb in combinations(range(1, n + 1), k)]

print(Solution().combine(n, k))

#* MY SOL 2
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        numbers = [num for num in range(1, n + 1)]
        print(numbers)
        return [comb for comb in combinations(numbers, k)]

print(Solution().combine(n, k))

#* A SOL 3 | $$$ ** BETTER ** $$$
from typing import List
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        return combinations(range(1, n+1), k)
    
print(Solution().combine(n, k))

#* A SOL 4
class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
        a=[]
        for i in range(1,n+1):
            a.append(i)
            print(a)
        return combinations(a, k)

print(Solution().combine(n, k))



#* WRONG WAYS
# class Solution:
#     def combine(self, n: int, k: int) -> List[List[int]]:
#         return [comb for i in range(1, n + 1) for comb in combinations(k)]
    
# class Solution:
#     def combine(self, n: int, k: int) -> List[List[int]]:
#         numbers = [num for num in range(1, n + 1)]
#         print(numbers)

#         return [comb for num in numbers for comb in combinations(k)]
    






# def combine(n, k)
#     (1..n).to_a.combination(k).to_a
# end
# p combine(n, k)