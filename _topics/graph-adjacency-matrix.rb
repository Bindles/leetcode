# Simple graph represented as an adjacency list
graph = {
  0 => [1, 2],
  1 => [0, 3, 4],
  2 => [0, 5],
  3 => [1],
  4 => [1],
  5 => [2]
}

# Function to generate adjacency matrix
def adjacency_matrix(graph)
  vertices = graph.keys.max + 1 # Determine the number of vertices in the graph
  matrix = Array.new(vertices) { Array.new(vertices, 0) } # Initialize the matrix with all zeros
  
  graph.each do |vertex, neighbors|
    neighbors.each do |neighbor|
      matrix[vertex][neighbor] = 1 # Set the corresponding cell to 1 if there is an edge
    end
  end
  
  matrix # Return the adjacency matrix
end

# Print the adjacency matrix
def print_matrix(matrix)
  matrix.each { |row| puts row.join(' ') }
end

# Generate and print the adjacency matrix
adj_matrix = adjacency_matrix(graph)
print_matrix(adj_matrix)
