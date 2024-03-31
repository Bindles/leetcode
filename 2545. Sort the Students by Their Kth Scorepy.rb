#PYTHON
#*2545. Sort the Students by Their Kth Score
score = [[10,6,9,1],[7,5,11,2],[4,8,3,15]];k = 2
# @param {Integer[][]} score
# @param {Integer} k
# @return {Integer[][]}
def sort_the_students(score, k)
    score.sort_by{|a|-a[k]}
end
p sort_the_students(score, k)