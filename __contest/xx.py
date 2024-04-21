def min_operations(numbers):
    median = sorted(numbers)[len(numbers) // 2]  # Find the median value
    operations = sum(abs(num - median) for num in numbers)
    return operations

def minimum_operations(grid):
    if len(grid) == 1:
        return min_operations(grid[0])  # Calculate min operations directly for a single row
    else:
        # Transpose the grid to get columns
        columns = list(zip(*grid))

        # Initialize the total number of operations
        operations = 0

        # Calculate operations for each column
        for col in columns:
            # Find the median value in the column
            median = sorted(col)[len(col) // 2]

            #clc difeach element and the median value
            for val in col:
                operations += abs(val - median)

        return operations

print(minimum_operations([[1,0,2],[1,0,2]])) # Output: 0
print(minimum_operations([[1,1,1],[0,0,0]])) # Output: 3
print(minimum_operations([[1],[2],[3]]))     #2 !! NEED 2 NOT 3
