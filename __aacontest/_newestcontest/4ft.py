class Solution:
    def distance(self, a: tuple[int, int], b: tuple[int, int]):
        return abs(a[0]-b[0]) + abs(a[1]-b[1])

    def minimumDistance(self, points: list, debug: bool = True):
        points = [tuple(point) for point in points]
        max_distances = {self.distance(a, b): (a, b) for a in points for b in points}

        max_distances_keys = sorted(max_distances.keys(), reverse=True)

        max_a, max_b = max_distances[max_distances_keys[0]]

        if max_a == max_b:
            return 0

        new_max_a, new_max_b = float('inf'), float('inf')
        for distance in max_distances_keys[1:]:
            if new_max_a is float('inf') and max_a not in max_distances[distance]:
                new_max_a = distance

            if new_max_b is float('inf') and max_b not in max_distances[distance]:
                new_max_b = distance

            if new_max_a is not float('inf') and new_max_b is not float('inf'):
                return min(new_max_a, new_max_b)

        return min(new_max_a, new_max_b)
