// 2643. Row With Maximum Ones
mat = [[0,0,0],[0,1,1]]
/**
 * @param {number[][]} mat
 * @return {number[]}
 */
var rowAndMaximumOnes = function(mat) {
  const result = mat.map((row, i) => [i, row.filter(val => val === 1).length]);
  const maxRow = result.reduce((max, curr) => curr[1] > max[1] ? curr : max);
  return [maxRow[0], maxRow[1]];
}
console.log(rowAndMaximumOnes(mat)); // Output: [1, 2]


