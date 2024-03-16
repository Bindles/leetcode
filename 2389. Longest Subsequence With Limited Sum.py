#* 2389. Longest Subsequence With Limited Sum
nums = [4,5,2,1]
queries = [3,10,21]
# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
from itertools import accumulate
from bisect import bisect_right
#* SOL
class Solution:
    def answerQueries(self, nums, queries):
        prefix = list(accumulate(sorted(nums)))
        return [bisect_right(prefix, q) for q in queries]
print(Solution().answerQueries(nums,queries))