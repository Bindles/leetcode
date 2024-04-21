def minimum_operations(grid)
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



puts minimum_operations([[1,0,2],[1,0,2]]) # Output: 0
puts minimum_operations([[1,1,1],[0,0,0]]) # Output: 3
puts minimum_operations([[1],[2],[3]])     # Output: 2



def minimum_operations_single_column(column)
  # Initialize the total number of operations
  operations = 0

  # Find the maximum value encountered so far
  max_val = column[0]
  (1...column.length).each do |i|
    operations += max_val - column[i]
    max_val = [max_val, column[i]].max
  end

  operations
end


puts minimum_operations([[1],[2],[3]])     # Output: 3


def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def min_operations(numbers)
  gcd_value = numbers.reduce { |result, num| gcd(result, num) }
  operations = numbers.map { |num| (num - gcd_value).abs }.sum
  operations
end

numbers = [4, 7, 8]
operations_needed = min_operations(numbers)
puts "Lowest amount of operations needed: #{operations_needed}"


def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end

def min_operations(numbers)
  gcd_value = numbers.reduce { |result, num| gcd(result, num) }
  operations = numbers.map { |num| (num - gcd_value).abs }.sum
  operations
end

def minimum_operations(grid)
  if grid.size == 1
    return min_operations(grid[0]) # Calculate min operations directly for a single row
  else
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

    return operations
  end
end

# Example usage
grid = ([[1],[2],[3]])
operations_needed = minimum_operations(grid)
puts "Lowest amount of operations needed: #{operations_needed}"


def min_operations(numbers)
  median = numbers.sort[numbers.size / 2] # Find the median value
  operations = numbers.map { |num| (num - median).abs }.sum
  operations
end

def minimum_operations(grid)
  if grid.size == 1
    return min_operations(grid[0]) # Calculate min operations directly for a single row
  else
    # Transpose the grid to get columns
    columns = grid.transpose

    # Initialize the total number of operations
    operations = 0

    # Calculate operations for each column
    columns.each do |col|
      # Find the median value in the column
      median = col.sort[col.size / 2]

      # Calculate the difference between each element and the median value
      col.each do |val|
        operations += (val - median).abs
      end
    end

    return operations
  end
end

# Example usage
grid = [[1, 2, 3]]
operations_needed = minimum_operations(grid)
puts "Lowest amount of operations needed: #{operations_needed}"


puts minimum_operations([[1,0,2],[1,0,2]]) # Output: 0
puts minimum_operations([[1,1,1],[0,0,0]]) # Output: 3
puts minimum_operations([[1],[2],[3]])     # Output: 2
