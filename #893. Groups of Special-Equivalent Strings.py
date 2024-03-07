#PYTHON
#*893. Groups of Special-Equivalent Strings
words = ["abc","acb","bac","bca","cab","cba"]

from collections import Counter
#*SOL 1
class Solution:
    def numSpecialEquivGroups(self, words):
        return len(Counter(["".join(sorted(w[1::2]) + sorted(w[::2])) for w in words]))
    
s=Solution()
print(s.numSpecialEquivGroups(words))

#*SOL 2
class SB:
    def numSpecialEquivGroups(self, words):
                                                            
        wSet = set()                                      

        for word in words:                                  
            word = tuple(sorted((enumerate(word)),        
                           key = lambda x: (x[0]%2,x[1])))     
            print(wSet)                                    
            wSet.add(list(zip(*word))[1])                  
        return len(wSet) 
        
s=SB()
print(s.numSpecialEquivGroups(words))                               