# PYTHON
#* 3123. Find Edges in Shortest Paths
n = 6; edges = [[0,1,4],[0,2,1],[1,3,2],[1,4,3],[1,5,1],[2,3,1],[3,5,3],[4,5,2]]
from typing import List
import heapq
class Solution:
    def findAnswer(self, n: int, edges: List[List[int]]) -> List[bool]:
        graph = [[] for _ in range(n)]
        for u, v, w in edges: 
            graph[u].append((v, w))
            graph[v].append((u, w))
        
        def fn(source): 
            dist = [float('inf')] * n
            dist[source] = 0 
            pq = [(0, source)]
            while pq: 
                x, u = heapq.heappop(pq)
                if dist[u] == x: 
                    for v, w in graph[u]: 
                        if x + w < dist[v]: 
                            dist[v] = x + w
                            heapq.heappush(pq, (x + w, v))
            return dist 
        
        dist0 = fn(0)
        dist1 = fn(n - 1)
        if dist0[n - 1] == float('inf'): 
            return [False] * len(edges)
        result = []
        for u, v, w in edges: 
            result.append(dist0[u] + w + dist1[v] == dist0[n - 1] or dist0[v] + w + dist1[u] == dist0[n - 1])
        return result

print(Solution().findAnswer(n, edges))