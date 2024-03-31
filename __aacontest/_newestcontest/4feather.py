from math import inf


class Solution:
    def distance(self, a: tuple[int, int], b: tuple[int, int]):
        return abs(a[0]-b[0]) + abs(a[1]-b[1])

    def minimumDistance(self, points: list, debug: bool = True):
        points = [tuple(point) for point in points]
        max_distances = {self.distance(a, b): (a, b) for a in points for b in points}

        max_distances_keys = sorted(max_distances.keys(), reverse=True)

        max_a, max_b = max_distances[max_distances_keys[0]]

        if max_a == max_b:
            print(f"Points are the same. Removing {max_a}")
            return 0

        if debug:
            print(f"Removing {max_a} or {max_b}...")

        new_max_a, new_max_b = inf, inf
        for distance in max_distances_keys[1:]:
            if new_max_a is inf and max_a not in max_distances[distance]:
                if debug:
                    print(f"Removing {max_a} would not change distance between {max_distances[distance]}. Max would be {distance}")
                new_max_a = distance

            if new_max_b is inf and max_b not in max_distances[distance]:
                if debug:
                    print(f"Removing {max_b} would not change distance between {max_distances[distance]}. Max would be {distance}")
                new_max_b = distance

            if new_max_a is not inf and new_max_b is not inf:
                return min(new_max_a, new_max_b)

        return min(new_max_a, new_max_b)
    
#TETSTSTSS
points1 = [[3,10],[5,15],[10,2],[4,4]]
print(Solution().minimumDistance(points1))  # Output: 12

points2 = [[1,1],[1,1],[1,1]]
print(Solution().minimumDistance(points2))  # Output: 0
#ONLY WRONG ONE
points3 = [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
print(Solution().minimumDistance(points3))  # Output: 7 NEEDS 10

#FAILS TETCASE 3
#INPUT: [[3,2],[3,9],[7,10],[4,4],[8,10],[2,7]]
#=> 7, EXPECTED: 10