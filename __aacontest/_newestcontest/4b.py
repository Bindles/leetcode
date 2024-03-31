def minimum_distance(points):
    max_distance = 0
    
    for i, p1 in enumerate(points):
        for j, p2 in enumerate(points):
            if i == j:
                continue
            distance = abs(p1[0] - p2[0]) + abs(p1[1] - p2[1])
            max_distance = max(max_distance, distance)
    
    min_max_distance = float('inf')
    
    for i, point in enumerate(points):
        distances = [abs(p[0] - point[0]) + abs(p[1] - point[1]) for p in points]
        min_max_distance = min(min_max_distance, max(distances))
    
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
class Solution:
    def distance(self, a: list[int], b: list[int]):
        return abs(a[0]-b[0]) + abs(a[1]-b[1])

    def minimumDistance(self, points: list[list[int]]) -> int:
        max_distance = []
        for a in points:
            _points = points.copy()
            _points.remove(a)

            max_distance += [max(self.distance(x, y) for x in _points for y in _points)]

        return min(max_distance)

#TETSTSTSS
points1 = [[3,10],[5,15],[10,2],[4,4]]
print(minimum_distance(points1))  # Output: 12

points2 = [[1,1],[1,1],[1,1]]
print(minimum_distance(points2))  # Output: 0
#ONLY WRONG ONE
points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
print(minimum_distance(points3))  # Output: 7 NEEDS 10


