#* 2697. Lexicographically Smallest Palindrome
s = "egcfe"

class Solution:
    def makeSmallestPalindrome(self, s: str) -> str:
        x = list(zip(s, reversed(s)))
        return ''.join(min(pair) for pair in x)

print(Solution().makeSmallestPalindrome(s))

class Solution:
    def makeSmallestPalindrome(self, s: str) -> str:
        letters = list(s)
        print(letters)

        for i in range(len(s) // 2):
            letters[i] = letters[~i] = min(letters[i], letters[~i])

        return ''.join(letters)

print(Solution().makeSmallestPalindrome(s))