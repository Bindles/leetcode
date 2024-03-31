// 1528. Shuffle String
s = "codeleet"; indices = [4,5,6,7,0,2,1,3]
// SOL 2
/**
 * @param {string} s
 * @param {number[]} indices
 * @return {string}
 */
var restoreString = function(s, indices) {
  return indices.map((index, i) => s[indices.indexOf(i)]).join('');
}

console.log(restoreString(s, indices));  // Output: "leetcode"