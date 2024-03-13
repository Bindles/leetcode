#PYTHON
#* 1576. Replace All ?'s to Avoid Consecutive Repeating Characters
s = "ubv?w"
#* SOL
class Solution:
    def modifyString(self, s: str) -> str:
        if s =='?': return 'a'
        for i in range(len(s)-1):
            if s[i] == '?' : s = s.replace(s[i], [c for c in "abc" if c not in {s[i-1],s[i+1]}][0], 1)
        return s.replace(s[-1], [c for c in "ab" if c != s[-2]][0]) if s[-1]=='?' else s
print(Solution().modifyString(s))


#* OL
class Solution:
    def modifyString(self, s: str) -> str:
        return [previous:='@',s:='@'+s+'@'] and [previous:=(s[i] if s[i]!='?' else ('q' if 'q' not in (previous,s[i+1]) else ('w' if 'w' not in (previous,s[i+1]) else 'e'))) for i in range(1,len(s)-1)]
print(Solution().modifyString(s))

#* SOL
class Solution:
    def modifyString(self, s: str) -> str:
        s = list("|" + s + "|")
        it = cycle(string.ascii_lowercase)
        for i in range(1, len(s) - 1):
            while s[i] in (s[i-1], s[i+1], "?"):
                s[i] = next(it)
        return "".join(s[1:-1])  

#*LOL
import random
class Solution:
    import random
    def modifyString(self, s: str) -> str:
        lst = list(s)
        lst.insert(0,-1)
        lst.append(-1)
        alphabet = 'abcdefghijklmnopqrtsuvwxyz'
        for i in range(1,len(lst)):
            if lst[i]=='?':
                while(True):
                    string = random.choice(alphabet)
                    if string!=lst[i-1] and string !=lst[i+1]:
                        lst[i] = string
                        break
        lst = lst[1:-1]
        return "".join(str(i) for i in lst)      