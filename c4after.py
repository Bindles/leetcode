import itertools

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

    def disjoint(self, nums: list[int], k: int):
        """Entry point for recursive function"""
        # Split the array into k-1 sections and dump the remaining in initial[k]
        # [1, 2, 3, 4], k=3 -> [1] [2] [3,4]
        initial = [[n] for n in nums[:k - 1]] + [nums[k - 1:]]
        yield initial

        # Recurse
        for n in self._disjoint(initial, k, k-1):
            yield n

    def _disjoint(self, nums: list[list], k: int, shift_index: int):
        """Recursive check to shift elements left, then start the next iteration"""
        # Check that we have elements to shift
        if len(nums[shift_index]) == 1:
            return

        nums = nums.copy()  # Object so we have to copy
        # pop and append to shift
        # [1] [2] [3, 4] -> [1] [2, 3] [4]
        nums[shift_index - 1].append(nums[shift_index].pop(0))
        yield nums

        # Try to shift more elements
        for i in range(1, k):
            for n in self._disjoint(nums, k, i):
                yield n

    def maximumStrength(self, nums: list[int], k: int) -> int:
        return max(
            self.strength(arr)
            for start in range(0, len(nums) - k + 1)
            for end in range(start + k, len(nums) + 1)
            for arr in self.disjoint(nums[start:end], k)
        )

                                #ARGS, EXPECTED)
print(Solution().maximumStrength([1,2,3,-1,2], 3), 22) # 22 =>PASS
print(Solution().maximumStrength([12,-2,-2,-2,-2], 5), 64) #64 =>PASS
print(Solution().maximumStrength([-1, -2, -3], 1), -1) # -1=> PASS
print(Solution().maximumStrength([-99, 85], 1), 85) # 85 =>PASS
print(Solution().maximumStrength([2,-76,77,-30,5,-96,24], 3), 497) # 372 =>FAIL expects 497

# 22 22
# 64 64
# -1 -1
# 85 85
# 372 497