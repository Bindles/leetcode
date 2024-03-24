class Solution:
    def stringIndices(self, wordsContainer, wordsQuery):
        # Helper function to find the longest common suffix between two strings
        def longest_common_suffix(str1, str2):
            i = 0
            while i < min(len(str1), len(str2)) and str1[-1 - i] == str2[-1 - i]:
                i += 1
            return str1[-i:]

        # Create a dictionary to store indices of words based on their suffixes
        suffix_indices = {}
        for i, word in enumerate(wordsContainer):
            suffix = word[::-1]  # Reversed word as suffix
            if suffix not in suffix_indices:
                suffix_indices[suffix] = i

        ans = []
        for query in wordsQuery:
            max_suffix = ""
            max_index = -1
            for suffix in suffix_indices.keys():
                if query.endswith(suffix[::-1]):  # Reversed back the suffix for matching
                    if len(suffix) > len(max_suffix) or (len(suffix) == len(max_suffix) and suffix_indices[suffix] < max_index):
                        max_suffix = suffix
                        max_index = suffix_indices[suffix]
            ans.append(max_index)

        return ans

# Test Cases
solution = Solution()
print(solution.stringIndices(["abcd","bcd","xbcd"], ["cd","bcd","xyz"]))  # Output: [1, 1, 1]
print(solution.stringIndices(["abcdefgh","poiuygh","ghghgh"], ["gh","acbfgh","acbfegh"]))  # Output: [2, 0, 2]
