def minimum_distance(points)
    max_distance = 0
    
    # Calculate the maximum distance between any two points
    points.each_with_index do |p1, i|
        points.each_with_index do |p2, j|
            next if i == j  
            distance = (p1[0] - p2[0]).abs + (p1[1] - p2[1]).abs
            max_distance = [max_distance, distance].max
            puts "Max distance updated: #{max_distance} (#{p1} to #{p2})"
        end
    end
    
    min_max_distance = Float::INFINITY
    
    # Update min_max_distance considering the minimum of the maximum distances from each point
    points.each_with_index do |point, i|
        new_distances = points.map { |p| (p[0] - point[0]).abs + (p[1] - point[1]).abs }
        max_from_point = new_distances.max  # Maximum distance from the current point
        min_max_distance = [min_max_distance, max_from_point].min
        puts "New distances from point #{point}: #{new_distances}"
        puts "Min max distance updated: #{min_max_distance}"
    end
    
    min_max_distance
end



# Example test cases
points1 = [[3,10],[5,15],[10,2],[4,4]]
puts minimum_distance(points1)  # Output: 12

points2 = [[1,1],[1,1],[1,1]]
puts minimum_distance(points2)  # Output: 0

points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
puts minimum_distance(points3)  # Output: 7 EXPECTED 10 <= THIS NEEDS 10 NOT 7


#FAILS TETCASE 3
#INPUT: [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#=> 7, EXPECTED: 10
