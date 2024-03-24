class Solution:
    def minOperations(self, k: int) -> int:
        if k == 1:
            return 0
        
        operations = 0
        current_sum = 1
        current_max = 1
        
        while current_sum < k:
            operations += 1
            if current_sum + current_max <= k:
                current_max *= 2
                current_sum += current_max
            else:
                diff = k - current_sum
                operations += (diff + current_max - 1) // current_max
                break
        
        return operations

# Test cases
test_cases = [11, 1, 10, 20]
solver = Solution()
for k in test_cases:
    print(f"Input: k = {k}")
    print("Output:", solver.minOperations(k))
    print()




# Test cases
solution = Solution()
print(solution.minOperations(11))  # Output: 5
print(solution.minOperations(1))   # Output: 0
print(solution.minOperations(2)) 
