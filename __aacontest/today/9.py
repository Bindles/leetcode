class Solution:
    def minOperations(self, k: int) -> int:
        if k == 1:
            return 0
        
        current_sum = 1
        operations = 0
        i = 0
        
        while current_sum < k:
            operations += 1
            
            if i % 2 == 0:
                current_sum *= 2
            else:
                current_sum += 1
                
            i += 1
        
        return operations

# Test cases
test_cases = [11, 1,4,3]
sol = Solution()
for i, k in enumerate(test_cases, 1):
    print(f"Test case {i}:")
    print("Input:", k)
    print("Output:", sol.minOperations(k))
    print()
