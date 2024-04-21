def minimum_operations(grid)
  # If it's a single column
  if grid[0].length == 1
    # Find the minimum value in the column
    min_val = grid.min_by { |row| row[0] }[0]

    # Calculate the number of operations needed
    operations = 0
    grid.each_with_index do |row, index|
      operations += (min_val + index) - row[0]
    end
    return operations
  end

  # Transpose the grid to get columns
  columns = grid.transpose

  # Initialize the total number of operations
  operations = 0

  # Calculate operations for each column
  columns.each do |col|
    # Find the minimum value in the column
    min_val = col.min

    # Calculate the difference between each element and the minimum value
    col.each do |val|
      operations += val - min_val
    end
  end

  operations
end

# Test cases
puts minimum_operations([[1,0,2],[1,0,2]]) # Output: 0
puts minimum_operations([[1,1,1],[0,0,0]]) # Output: 3
puts minimum_operations([[1],[2],[3]])     # Output: 2
