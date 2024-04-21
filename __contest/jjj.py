def solveColumn(self, col):
        return min([(value, len(col) - col.count(value)) for value in set(col)], key=lambda v: v[1]
                   
print(minimum_operations([[1,0,2],[1,0,2]])) # Output: 0
print(minimum_operations([[1,1,1],[0,0,0]])) # Output: 3
print(minimum_operations([[1],[2],[3]]))     #2 !! NEED 2 NOT 3 