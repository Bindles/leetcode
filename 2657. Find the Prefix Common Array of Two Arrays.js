// 2657. Find the Prefix Common Array of Two Arrays
A = [1,3,2,4]
B = [3,1,2,4]
/**
 * @param {number[]} A
 * @param {number[]} B
 * @return {number[]}
 */
var findThePrefixCommonArray = function(A, B) {
  return Array.from({ length: A.length }, (_, i) => [...A.slice(0, i + 1)].filter(x => B.slice(0, i + 1).includes(x)).length);
}
console.log(findThePrefixCommonArray(A,B))