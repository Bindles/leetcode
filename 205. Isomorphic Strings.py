#PYTHON
#* 205. Isomorphic Strings
s = "egg"
t = "add"
#*SOL 2 | CONCISE
class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
      return map(s.index, s) == map(t.index, t)
    
print(Solution().isIsomorphic(s,t))
    
#*SOL 1 | CONCISE
class Solution:
    def isIsomorphic(self, s: str, t: str) -> bool:
      return list(map(s.index, s)) == list(map(t.index, t))
    
print(Solution().isIsomorphic(s,t))
#* TEST

char_list = [char for char in s]
print(char_list)

char_generator = (char for char in s)
for char in char_generator:
    print(char)

mapxs = map(s.index, s)
print(mapxs)

mapxs = map(s.index, s)
print(list(mapxs))

mapxt = list(map(t.index, t))
print(mapxt)



