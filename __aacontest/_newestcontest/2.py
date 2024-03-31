class Solution:
    def maxBottlesDrunk(self, numBottles: int, numExchange: int) -> int:
        total_bottles = numBottles
        empty_bottles = 0
        drank = 0
        
        while total_bottles > 0:
            drank += total_bottles
            empty_bottles += total_bottles
            
            total_bottles = empty_bottles // numExchange
            empty_bottles %= numExchange
        
        return drank

# Test cases
test_cases = [
    (13, 6),  # Example 1
    (10, 3),  # Example 2
    (5, 5),   # Custom case: numBottles == numExchange
    (1, 1),   # Custom case: minimum input values
    (100, 100), # Custom case: maximum input values
]

sol = Solution()
for numBottles, numExchange in test_cases:
    print(f"Input: numBottles = {numBottles}, numExchange = {numExchange}")
    print("Output:", sol.maxBottlesDrunk(numBottles, numExchange))
    print()
