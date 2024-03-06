#PYTHON
#* 48. Rotate Image
# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
#* MY SOL | CONCISE
def rotate(matrix):
      matrix[:]=list(zip(*matrix[::-1]))
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)

#* MY SOL 1.5 |MORE CONCISE     
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
      matrix[:] = zip(*matrix[::-1])
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)

#* 2
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
        m = list(zip(*matrix))
        for i in range(len(matrix)):
          matrix[i] = m[i][::-1]
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)

#*3
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
      for k in range(len(matrix)):
        for j in range(len(matrix)-1, -1, -1):
          matrix[k].append(matrix[j].pop(0))
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)

#*4
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
    matrix[:] = [[row[i] for row in matrix[::-1]] for i in range(len(matrix))]
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)


#NUMPY
import numpy as np
def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
    matrix[:] = np.fliplr(np.transpose(matrix))
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)

def rotate(matrix = [[1,2,3],[4,5,6],[7,8,9]]):
    matrix[:] = [row[::-1] for row in np.transpose(matrix)]
matrix = [[1,2,3],[4,5,6],[7,8,9]];rotate(matrix);print(matrix)