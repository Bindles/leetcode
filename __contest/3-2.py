import heapq
from collections import defaultdict
from typing import List

class Solution:
    def findAnswer(self, n: int, edges: List[List[int]]) -> List[bool]:
        graph = defaultdict(list)
        for a, b, w in edges:
            graph[a].append((b, w))
            graph[b].append((a, w))

        # Dijkstra's algorithm to find shortest paths
        def dijkstra():
            dist = [float('inf')] * n
            dist[0] = 0
            heap = [(0, 0)]

            while heap:
                d, node = heapq.heappop(heap)
                if d > dist[node]:
                    continue
                for neighbor, weight in graph[node]:
                    if dist[node] + weight < dist[neighbor]:
                        dist[neighbor] = dist[node] + weight
                        heapq.heappush(heap, (dist[neighbor], neighbor))
            return dist

        shortest_paths = dijkstra()
        
        # Check if each edge is part of at least one shortest path
        answer = [False] * len(edges)
        for i, (a, b, w) in enumerate(edges):
            if shortest_paths[a] + w == shortest_paths[b] or shortest_paths[b] + w == shortest_paths[a]:
                answer[i] = True

        return answer

# Test cases
solution = Solution()
print(solution.findAnswer(6, [[0,1,4],[0,2,1],[1,3,2],[1,4,3],[1,5,1],[2,3,1],[3,5,3],[4,5,2]]))  # [true,true,true,false,true,true,true,false]
print(solution.findAnswer(4, [[2,0,1],[0,1,1],[0,3,4],[3,2,2]]))  # [true,false,false,true]
