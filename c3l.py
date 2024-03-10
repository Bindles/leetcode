from typing import List

class Solution:
    def shortestSubstrings(self, arr: List[str]) -> List[str]:
        def is_unique(sub, arr, index):
            for i, s in enumerate(arr):
                if i != index and sub in s:
                    return False
            return True

        result = []
        for s in arr:
            unique_subs = []
            for i in range(len(s)):
                for j in range(i + 1, len(s) + 1):
                    sub = s[i:j]
                    if is_unique(sub, arr, arr.index(s)):
                        unique_subs.append(sub)
            if not unique_subs:
                result.append("")
            else:
                shortest = min(unique_subs, key=lambda x: (len(x), x))
                result.append(shortest)
        return result

# Example usage:
arr1 = ["cab", "ad", "bad", "c"]
arr2 = ["abc", "bcd", "abcd"]

sol = Solution()
print(sol.shortestSubstrings(arr1))  # Output: ["ab", "", "ba", ""]
print(sol.shortestSubstrings(arr2))  # Output: ["", "", "abcd"]
