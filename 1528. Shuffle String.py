#* 1528. Shuffle String
s = "codeleet"; indices = [4,5,6,7,0,2,1,3]
# @param {String} s
# @param {Integer[]} indices
# @return {String}
#* SOL 1
class Solution:
    def restoreString(self, s, indices):
        return ''.join(s[indices.index(i)] for i in range(len(indices)))
    
print(Solution().restoreString(s, indices))  # Output: "leetcode"