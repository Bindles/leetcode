#PYTHON
#* 942. DI String Match
s = "IDID"
class Solution:
    def diStringMatch(self, s: str) -> List[int]:
        source = list(range(len(s) + 1))
        res = []
        for char in s:
            res.append(source.pop(0) if char == 'I' else source.pop())
        res.append(source.pop())
        return res
        