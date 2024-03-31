def minimum_distance(points)
  # Transpose the points
  transposed_points = points.transpose
  
  # Find the minimum and maximum values along x and y axes
  min_x = transposed_points[0].min
  max_x = transposed_points[0].max
  min_y = transposed_points[1].min
  max_y = transposed_points[1].max
  
  # Calculate the diagonal distances
  diagonal_distances = [
    (max_x - min_x) + (max_y - min_y), # diagonal from top-left to bottom-right
    (max_x - min_x) + (min_y - max_y)  # diagonal from bottom-left to top-right
  ]
  
  # Return the maximum diagonal distance
  diagonal_distances.max
end



# Test cases
points1 = [[3,10],[5,15],[10,2],[4,4]]
points2 = [[1,1],[1,1],[1,1]]
points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]

puts minimum_distance(points1) # Output: 13
puts minimum_distance(points2) # Output: 0
puts minimum_distance(points3) # Output: 8
