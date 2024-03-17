class Solution:
    def isSubstringPresent(self, s: str) -> bool:
        for i in range(len(s) - 1):
            substring = s[i:i+2]
            if substring in s[::-1]:
                return True
        return False

# Example usage:
solution = Solution()
print(solution.isSubstringPresent("leetcode"))  # Output: True
print(solution.isSubstringPresent("abcba"))     # Output: True
print(solution.isSubstringPresent("abcd"))      # Output: False


class Solution:
    def isSubstringPresent(self, s: str) -> bool:
        return any(s[i:i+2][::-1] in s for i in range(len(s)-1))