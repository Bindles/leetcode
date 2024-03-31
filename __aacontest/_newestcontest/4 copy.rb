def max_distance_with_one_point_missing(points)
    min_max_distance = nil
    
    points.each_with_index do |point, i|
      remaining_points = points[0...i] + points[i+1..-1]
      max_distance = 0
      
      remaining_points.each do |other_point|
        distance = (point[0] - other_point[0]).abs + (point[1] - other_point[1]).abs
        max_distance = [max_distance, distance].max
      end
      
      min_max_distance = min_max_distance.nil? ? max_distance : [min_max_distance, max_distance].min
    end
    
    min_max_distance
end


  
  points = [[3,10],[5,15],[10,2],[4,4]]
  puts max_distance_with_one_point_missing(points)

  def minimum_distance(points)
    res=[]
    min_max_distance = nil
    
    points.each_with_index do |point, i|
      remaining_points = points[0...i] + points[i+1..-1]
      max_distance = 0
      
      remaining_points.each do |other_point|
        distance = (point[0] - other_point[0]).abs + (point[1] - other_point[1]).abs
        max_distance = [max_distance, distance].max
      end
      
      puts "After removing the #{i}th point (#{point} | #{remaining_points}) the maximum distance is between points #{remaining_points[0]} and #{remaining_points[1]}, which is #{max_distance}."
      p xxx = remaining_points.map(&:sum)
      p aa =xxx.max
      p bb = xxx.min
      p aa-bb
      p res << (aa-bb)
    
      
      min_max_distance = min_max_distance.nil? ? max_distance : [min_max_distance, max_distance].min
    end
    
    puts "It can be seen that #{min_max_distance} is the minimum possible maximum distance between any two points after removing exactly one point."
    
    min_max_distance
    p 'output'
    res.min
  end
  
  
# Example test cases
points1 = [[3,10],[5,15],[10,2],[4,4]]
puts minimum_distance(points1)  # Output: 12

p '--'
points2 = [[1,1],[1,1],[1,1]]
#puts minimum_distance(points2)  # Output: 0
p '--'

points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#puts minimum_distance(points3)  # Output: 7 EXPECTED 10 <= THIS NEEDS 10 NOT 7


#FAILS TETCASE 3
#INPUT: [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#=> 7, EXPECTED: 10

  
  
  


# # Example test cases
# points1 = [[3,10],[5,15],[10,2],[4,4]]
# #puts minimum_distance(points1)  # Output: 12

# points2 = [[1,1],[1,1],[1,1]]
# #puts minimum_distance(points2)  # Output: 0

# points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
# puts minimum_distance(points3)  # Output: 7 EXPECTED 10 <= THIS NEEDS 10 NOT 7


#FAILS TETCASE 3
#INPUT: [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#=> 7, EXPECTED: 10
