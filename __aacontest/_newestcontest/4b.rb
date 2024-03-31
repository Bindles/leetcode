def manhattan_distance(p1, p2)
  (p1[0] - p2[0]).abs + (p1[1] - p2[1]).abs
end

def minimum_distance(points)
  n = points.length
  max_distance = 0
  min_max_distance = Float::INFINITY

  # Calculate the maximum distance for each point removal
  points.each_with_index do |p, i|
    points.each_with_index do |q, j|
      next if i == j

      max_distance = [max_distance, manhattan_distance(p, q)].max
    end
    min_max_distance = [min_max_distance, max_distance].min
    max_distance = 0
  end

  min_max_distance
end

# Test Cases
puts minimum_distance([[3,10],[5,15],[10,2],[4,4]])  # Output: 12
puts minimum_distance([[1,1],[1,1],[1,1]])          # Output: 0


# Test cases
points1 = [[3,10],[5,15],[10,2],[4,4]]
puts minimum_distance(points1) # Output: 12

points2 = [[1,1],[1,1],[1,1]]
puts minimum_distance(points2) # Output: 0

#ONLY WRONG ONE
points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
puts minimum_distance(points3)  # Output: 7 NEEDS 10