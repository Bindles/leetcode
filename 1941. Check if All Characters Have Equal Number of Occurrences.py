#* 1941. Check if All Characters Have Equal Number of Occurrences
s = "abacbc"
# @param {String} s
# @return {Boolean}
#* MY SOLUTIONS
#* SOL 1******
from collections import Counter

class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        return len(set(Counter(s).values())) == 1
        
print(Solution().areOccurrencesEqual(s))

#* collections.Counter
import collections
class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        return len(set(collections.Counter(s).values())) == 1

print(Solution().areOccurrencesEqual(s))
    

#* SOL 1.1 LONG
class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        # Get the count of the first character
        count = Counter(s)

        freq = count[s[0]]
        # Compare it with the count of other characters
        for char in count:
            if count[char] != freq:
                return False
        return True
    
print(Solution().areOccurrencesEqual(s))
        
    
#* END SOL 1s ************

#* INTERESTING SOLUTIONS OTHER PPL
class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        dic = {}
        for char in s:
            dic[char] = dic.get(char, 0) + 1
        return len(set(dic.values())) == 1
    
print(Solution().areOccurrencesEqual(s))
    

class Solution:
    def areOccurrencesEqual(self, s: str) -> bool:
        count=s.count(s[0])
        t=set(s)
        for i in t:
            if s.count(i)!=count:
                return False
        return True
    
print(Solution().areOccurrencesEqual(s))
