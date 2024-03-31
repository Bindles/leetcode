from typing import List


def minimum_distance(points):
    min_max_distance = None
    
    for i, point in enumerate(points):
        remaining_points = points[:i] + points[i+1:]
        max_distance = 0
        
        for other_point in remaining_points:
            distance = abs(point[0] - other_point[0]) + abs(point[1] - other_point[1])
            max_distance = max(max_distance, distance)
        
        print(f"After removing the {i}th point ({point} | {remaining_points}) the maximum distance is between points {remaining_points[0]} and {remaining_points[1]}, which is {max_distance}.")
    
        min_max_distance = max_distance if min_max_distance is None else min(min_max_distance, max_distance)
    
    print(f"It can be seen that {min_max_distance} is the minimum possible maximum distance between any two points after removing exactly one point.")
    
    return min_max_distance

#TETSTSTSS
points1 = [[3,10],[5,15],[10,2],[4,4]]
print(minimum_distance(points1))  # Output: 12

points2 = [[1,1],[1,1],[1,1]]
print(minimum_distance(points2))  # Output: 0
#ONLY WRONG ONE
points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
print(minimum_distance(points3))  # Output: 7 NEEDS 10

#FAILS TETCASE 3
#INPUT: [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#=> 7, EXPECTED: 10
