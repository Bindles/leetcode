#PYTHON
#*1750. Minimum Length of String After Deleting Similar Ends
s = "aabccabba"
#*OPTIMIZED | 100% SPEED 90% MEM
class SB:
    def minimumLength(self, s):
        if len(s) == 1: return 1
        if len(s)%2 == 0 and s == s[::-1]: return 0

        while len(s) > 1:
            if s[0] == s[-1]:
                s = s.strip(s[0])
            else:
                break
        return len(s)
sol=SB()
print(sol.minimumLength(s))

#*2 POINTER
class SA:
    def minimumLength(self, s):
        left, right = 0, len(s) - 1
        while left < right and s[left] == s[right]:
            current_char = s[left]
            while left <= right and s[left] == current_char:
                left += 1
            while right >= left and s[right] == current_char:
                right -= 1
        return right - left + 1
sol=SA()
print(sol.minimumLength(s))
