from typing import List

class Solution:
    def minimumDistance(self, points: List[List[int]]) -> int:
        n = len(points)
        max_distance = 0
        
        # Calculate Manhattan distance between two points
        def manhattan_distance(p1, p2):
            return abs(p1[0] - p2[0]) + abs(p1[1] - p2[1])
        
        # Function to find maximum distance by removing one point
        def find_max_distance_without_point(i):
            max_dist = 0
            for j in range(n):
                if j != i:
                    max_dist = max(max_dist, manhattan_distance(points[i], points[j]))
            return max_dist
        
        # Find maximum distance after removing each point
        for i in range(n):
            max_distance = max(max_distance, find_max_distance_without_point(i))
        
        return max_distance

# Test cases
solution = Solution()
print(solution.minimumDistance([[3,10],[5,15],[10,2],[4,4]])) # Output: 12
print(solution.minimumDistance([[1,1],[1,1],[1,1]])) # Output: 0
