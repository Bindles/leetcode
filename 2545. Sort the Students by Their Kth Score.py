#PYTHON
#*2545. Sort the Students by Their Kth Score
score = [[10,6,9,1],[7,5,11,2],[4,8,3,15]]
k = 2
class Solution:
    def sortTheStudents(self, score, k):
        return sorted(score, key=lambda x: x[k], reverse=True)
    
print(Solution().sortTheStudents(score,k))