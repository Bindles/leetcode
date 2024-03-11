//2545. Sort the Students by Their Kth Score
score = [[10,6,9,1],[7,5,11,2],[4,8,3,15]]
k = 2
/**
 * @param {number[][]} score
 * @param {number} k
 * @return {number[][]}
 */
var sortTheStudents = function(score, k) {
  return score.sort((a,b) => b[k] - a[k])
}
console.log(sortTheStudents(score,k))