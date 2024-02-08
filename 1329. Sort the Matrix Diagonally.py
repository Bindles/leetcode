class Solution(object):
    def diagonalSort(self, mat = [[3,3,1,1],[2,2,1,2],[1,1,1,2]]):
        m, n = len(mat), len(mat[0])

        transposed_mat = [[] for _ in range(m + n - 1)]
        for i in range(m):
            for j in range(n):
                transposed_mat[i - j].append(mat[i][j])

        for diagonal in transposed_mat:
            diagonal.sort()

        sorted_mat = [[0] * n for _ in range(m)]
        for i in range(m):
            for j in range(n):
                sorted_mat[i][j] = transposed_mat[i - j].pop(0)

        print(sorted_mat)

solution = Solution()
solution.diagonalSort()

# EXAMPLE 2
mat = [[11,25,66,1,69,7],[23,55,17,45,15,52],[75,31,36,44,58,8],[22,27,33,25,68,4],[84,28,14,11,5,50]]
solution.diagonalSort(mat)
