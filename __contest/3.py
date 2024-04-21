class Solution:
    def minimumOperations(self, grid):
        m, n = len(grid), len(grid[0])
        operations = 0
        
        # Iterate through each row from bottom to top
        for i in range(m-1, 0, -1):
            # Iterate through each column from right to left
            for j in range(n-1, -1, -1):
              print(grid[i], grid[j])

# Example usage:
grid1 = [[1,0,2],[1,0,2]]
grid2 = [[1,1,1],[0,0,0]]
grid3 = [[1],[2],[3]]

sol = Solution()
print(sol.minimumOperations(grid1))  # Output: 0
print(sol.minimumOperations(grid2))  # Output: 3
print(sol.minimumOperations(grid3))  # Output: 2
