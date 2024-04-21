def minimum_operations(grid):
    # Transpose the grid to get columns
    columns = list(zip(*grid))

    # Initialize the total number of operations
    operations = 0

    # Calculate operations for each column
    for col in columns:
        # Find the minimum value in the column
        min_val = min(col)

        # Calculate the difference between each element and the minimum value
        for val in col:
            operations += val - min_val

    return operations

# Test cases
print(minimum_operations([[1,0,2],[1,0,2]])) # Output: 0
print(minimum_operations([[1,1,1],[0,0,0]])) # Output: 3
print(minimum_operations([[1],[2],[3]]))     # Output: 2


