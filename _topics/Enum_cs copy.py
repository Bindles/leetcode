#ALL
array =[1,2,3,4,5,6,7,8]
res = all(num > 0 for num in array )
print(res)

#ANY
res = any(num > 2 for num in array)
print(res)

from itertools import groupby
result = [[k, list(g)] for k, g in groupby(array, key=lambda x: x % 2 == 0)]
print(result)

arr = [1, 2, 3, 5, 6, 7, 10, 12, 13]

from itertools import groupby

array = [1, 2, 3, 5, 6, 7, 10, 12, 13]

chunks = []
for key, group in groupby(enumerate(array), lambda x: x[0] - x[1]):
    chunks.append([x[1] for x in group])

print(chunks)

#CW 2 DONT WORK
result = [list(group) for group in [[1, 2,7], [4], [9, 10, 11, 12], [15]]]
print(result)


#MAP
res = [num * 100 for num in array]
print(res)

array = [[1,2,3],[3,2,1]]
res = [num * 100 for num in array]
print(res)

#FILTERMAP
res = [num * 100 for num in array if num % 2 ==0]
print(res)

for index, num in enumerate(array):
    print(index)
