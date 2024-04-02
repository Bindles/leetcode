#* 797. All Paths From Source to Target
graph = [[1,2],[3],[3],[]]
from typing import List, Generator
#*
class Solution:
    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:
        n = len(graph)
        def f(i):
            if i == n-1:
                return [[n-1]]
            return [[i] + p for c in graph[i] for p in f(c)]
        return f(0)
    
print(Solution().allPathsSourceTarget(graph))

#*
class Solution:
    def allPathsSourceTarget(self, graph: List[List[int]]) -> List[List[int]]:

        result = []
        n = len(graph)
        def dfs(node, path):
            if node == n-1: 
                result.append(path)
                return 

            for next_node in graph[node]:
                dfs(next_node, path + [next_node])
    
        dfs(0, [0])
        return result
    
print(Solution().allPathsSourceTarget(graph))

#*
def allPathsSourceTarget(self, graph: List[List[int]]) -> Generator:
	def dfs(u: int, t: int, path: List[int]) -> Generator:
		if u == t:
			yield path

		for v in graph[u]:
			yield from dfs(v, t, path + [v])

	graph = {
		u: set(neighbours)
		for u, neighbours in enumerate(graph)
	}
	return dfs(0, len(graph) - 1, [0])

print(Solution().allPathsSourceTarget(graph))
        