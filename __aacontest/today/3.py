from collections import defaultdict

class Solution:
    def mostFrequentIDs(self, nums, freq):
        counts = defaultdict(int)
        max_count = 0
        ans = []

        for i in range(len(nums)):
            counts[nums[i]] += freq[i]
            max_count = max(max_count, counts[nums[i]])
            ans.append(max_count if max_count > 0 else 0)

        return ans

# Test Cases
solution = Solution()
print(solution.mostFrequentIDs([2,3,2,1], [3,2,-3,1]))  # Output: [3, 3, 2, 2]
print(solution.mostFrequentIDs([5,5,3], [2,-2,1]))      # Output: [2, 0, 1]
