from itertools import combinations

class Solution:
    def strength(self, array_array):
        """Strength Formula from Problem"""
        sums = [sum(a) for a in array_array]
        x = len(array_array)
        strength = 0
        for i in range(len(array_array)):
            if i % 2 == 0:
                strength += sums[i] * (x - i)
            else:
                strength -= sums[i] * (x - i)
        return strength

    def maximumStrength(self, nums: list[int], k: int) -> int:
        if k == 1:
            return max(nums)  # Special case for k == 1
        
        max_strength = float('-inf')

        # Generate all combinations of k disjoint subarrays
        for subarrays in combinations(range(len(nums)), k):
            subarrays = sorted(subarrays)
            disjoint_subarrays = [nums[subarrays[i]:subarrays[i+1]] for i in range(k-1)] + [nums[subarrays[-1]:]]
            max_strength = max(max_strength, self.strength(disjoint_subarrays))

        return max_strength

# Test cases
print(Solution().maximumStrength([1,2,3,-1,2], 3))  # Expected: 22
print(Solution().maximumStrength([12,-2,-2,-2,-2], 5))  # Expected: 64
print(Solution().maximumStrength([-1, -2, -3], 1))  # Expected: -1
print(Solution().maximumStrength([-99, 85], 1))  # Expected: 85
print(Solution().maximumStrength([2,-76,77,-30,5,-96,24], 3))  # Expected: 497

