class Solution:
    def numberOfSpecialChars(self, word: str) -> int:
        special_chars = set()
        lowercase = set()

        for char in word:
            if char.isalpha():
                if char.lower() not in lowercase:
                    lowercase.add(char.lower())
                elif char.upper() == char and char.lower() in lowercase:
                    special_chars.add(char.lower())

        return len(special_chars)

# Test cases
sol = Solution()
print(sol.numberOfSpecialChars("aaAbcBC"))  # Output: 3
print(sol.numberOfSpecialChars("abc"))     # Output: 0
print(sol.numberOfSpecialChars("AbBCab"))   # Output: 0
