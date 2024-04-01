#* 1287. Element Appearing More Than 25% In Sorted Array
arr = [1,2,2,6,6,6,6,7,10] #Output: 6
from typing import List

class Solution:
    def findSpecialInteger(self, arr: List[int]) -> int:
        target = len(arr) // 4
        return next(num for num in arr if arr.count(num) > target)
    
print(Solution().findSpecialInteger(arr))
        

class Solution:
    def findSpecialInteger(self, arr: List[int]) -> int:
        target = len(arr) // 4
        a = [num for num in arr if arr.count(num) > target]
        return a[0]
  
print(Solution().findSpecialInteger(arr))
        
class Solution:
    def findSpecialInteger(self, arr: List[int]) -> int:
        target = len(arr) // 4
        for num in arr:
            if arr.count(num) > target:
                return num
            
print(Solution().findSpecialInteger(arr))

#*HASH FASTER
from collections import Counter
#* HASH WROTE OUT
def findSpecialInteger(arr):
    tally = Counter(arr)
    target = len(arr) // 4
    for key, val in tally.items():
        if val > target:
            return key

print(findSpecialInteger(arr))

#* HASH.FIND => KEY (NEXT)
def findSpecialInteger(arr):
    tally = Counter(arr)
    target = len(arr) // 4
    return next(key for key, val in tally.items() if val > target)

print(findSpecialInteger(arr))


#* HASH.FIND => VAL (NEXT)
def findSpecialInteger(arr):
    tally = Counter(arr)
    target = len(arr) // 4
    return next(val for key, val in tally.items() if val > target)

print(findSpecialInteger(arr))


#* BETTER (TALLY.SORT_BY OF RUBY)
class Solution:
    def findSpecialInteger(self, arr: List[int]) -> int:
            arr=Counter(arr)
            arr=sorted(arr.items(), key=lambda k_v_pair: k_v_pair[1] ,reverse=True)
            return arr[0][0]

        

# Example usage:
#arr = [1, 2, 2, 6, 6, 6, 6, 7, 10]
#print(findSpecialInteger(arr))

#print(Solution().findSpecialInteger(arr))

        