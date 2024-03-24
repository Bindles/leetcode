class Solution:
    def minOperations(self, k: int) -> int:
        operations = 0
        nums = [1]
        
        while sum(nums) < k:
            max_num = max(nums)
            if sum(num * 2 for num in nums) >= k:
                nums[nums.index(max_num)] *= 2
                break
            else:
                nums = [num + 1 for num in nums]
            operations += 1
        
        return operations

# Test cases
solution = Solution()
print(solution.minOperations(11))  # Output: 5
print(solution.minOperations(1))   # Output: 0
print(solution.minOperations(2))   # FIALS WITH 0, EXPECTED: 1
