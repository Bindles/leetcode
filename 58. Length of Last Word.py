#PYTHON
#* 58. Length of Last Word
s = "Hello World"
#* MY SOL
class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        return len(s.split()[-1])

print(Solution().lengthOfLastWord(s))
        