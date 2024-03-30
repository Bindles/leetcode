#* 151. Reverse Words in a String
s = "the sky is blue"
#*
class Solution:
    def reverseWords(self, s: str) -> str:
        return " ".join(reversed(s.split()))
    
print(Solution().reverseWords(s))

#*
class Solution:
    def reverseWords(self, s: str) -> str:
        sp = s.split()
        return " ".join(sp[::-1])

print(Solution().reverseWords(s))

#*
class Solution:
    def reverseWords(self, s: str) -> str:
        return " ".join(s.split()[::-1])

print(Solution().reverseWords(s))