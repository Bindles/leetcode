#*2545. Sort the Students by Their Kth Score
score = [[10,6,9,1],[7,5,11,2],[4,8,3,15]]
k = 2
# @param {Integer[][]} score
# @param {Integer} k
# @return {Integer[][]}
#*SOLUTION|SORT_BY
#score.sort_by{|subscore|subscore[k]}.reverse | .reverse => -subscore[k]
def sort_the_students(score, k)
  score.sort_by{|subscore|-subscore[k]}
end
p sort_the_students(score,k)

#* SORT<=>
def sort_the_students(score, k)
  score.sort {|a,b| b[k] <=> a[k]}
end
def sort_the_students(score, k)
  score.sort { _2[k] <=> _1[k]}
end
p sort_the_students(score,k)