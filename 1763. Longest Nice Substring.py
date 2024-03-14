#PYTHON
#* 1763. Longest Nice Substring
s = "YazaAay"
substr="aAa"#.split('')
#* SOLUTIONS:
class Solution:
  def longestNiceSubstring(self, s):
      subs = [s[i:j] for i in range(len(s)) for j in range(i+1, len(s)+1)]
      nice = [sub for sub in subs if set(sub)==set(sub.swapcase())]
      return max(nice, key=len, default="")

class Solution:
  def longestNiceSubstring(self, s):
      chars = set(s)
      for i, c in enumerate(s):
          if c.swapcase() not in chars:
              return max(map(self.longestNiceSubstring, [s[:i], s[i+1:]]), key=len)
      return s

class Solution:
  def longestNiceSubstring(self, s: str) -> str:
      res=""
      n=len(s)
      for i in range(n):
          for j in range(i,n):
              if all(ch.swapcase() in s[i:j+1] for ch in s[i:j+1]):
                  if len(s[i:j+1])>len(res):
                      res=s[i:j+1]
      
      return res

import itertools
class Solution:
  def longestNiceSubstring(self, s: str) -> str:
      return max((s[i1:i2] for i1, i2  in itertools.combinations(range(0, len(s)+1), 2) if set(s[i1: i2])== set(s[i1: i2].swapcase())), key=len, default="")
    
    
class Solution:
  def longestNiceSubstring(self, s: str) -> str:
      longest = ''

      for i in range(len(s)):
          seen = set()
          for j in range(i,len(s)):
              seen.add(s[j])
              if all(x.lower() in seen and x.upper() in seen for x in seen):
                  longest = max(longest,s[i:j+1],key=len)
      
      return longest

      
class Solution:
  def longestNiceSubstring(self, s: str) -> str:
      #Divide and Conquer Approach 
      #Base Condition 

      if len(s) < 2 :
          return ""
      
      charSet = set(s)

      for i, c in enumerate(s):
          if c.swapcase() not in charSet:
              s1 = self.longestNiceSubstring(s[:i])
              s2 = self.longestNiceSubstring(s[i+1:])
              return max(s1,s2,key = len)
      return s
                    

      
