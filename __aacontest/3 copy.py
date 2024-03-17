class Solution:

    def max_diff(self, word: str):
        f = {l: word.count(l) for l in set(word)}

        max_diff, max_i, max_j = 0, None, None
        for index_i in range(len(f)):
            key_i = list(f.keys())[index_i]

            for index_j in range(index_i, len(f)):
                key_j = list(f.keys())[index_j]

                diff = abs(f[key_i] - f[key_j])
                if diff > max_diff:
                    max_diff, max_i, max_j = diff, key_i, key_j

        return max_diff, max_i, max_j

    def minimumDeletions(self, word: str, k: int) -> int:
        deletions = 0
        max_diff, max_i, max_j = self.max_diff(word)
        while max_diff > k:
            delete = max_i if word.count(max_i) < (max_diff - k) else max_j
            word = word.replace(delete, "", 1)
            deletions += 1
            max_diff, max_i, max_j = self.max_diff(word)

        return deletions
    
s=Solution()
print(s.minimumDeletions("aabcaba", 0), 3)     # Output: 3
print(s.minimumDeletions("dabdcbdcdcd", 2), 2) # Output: 2
print(s.minimumDeletions("aaabaaa", 2), 1)     # Output: 1