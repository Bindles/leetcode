#* 1876. Substrings of Size Three with Distinct Characters
s = "xyzzaz"
# @param {String} s
# @return {Integer}
#* SOL 1  | 0..s.length-1 == 0...s.length || s.length.times do

#*3 len window prob
def countGoodSubstrings(self, s: str) -> int:
    ans=0
    for i in range(len(s)-2):
        if len(set(s[i:i+3]))==3:
            ans+=1
    return ans

def countGoodSubstrings(self, s: str) -> int:
  count=0
  for i in range(len(s)-2):
      if len(set(s[i:i+3]))==3: # taking a window of 3
          count+=1
  return count

def countGoodSubstrings(self, s: str) -> int:
    c,n=0,len(s)
    for i in range(n-2):
        t=set(s[i:i+3])
        if len(t)==3:
            c+=1
    return c