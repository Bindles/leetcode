class Solution:
    def countSubstrings(self, s: str, c: str) -> int:
        count = 0
        char_count = s.count(c)
        
        # Calculate the number of substrings starting and ending with 'c'
        return char_count * (char_count + 1) // 2

test = Solution()
print(test.countSubstrings("abada", "a"))  # Output: 6
print(test.countSubstrings("zzz", "z"))    # Output: 6
