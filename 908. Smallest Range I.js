// 908. Smallest Range I
nums = [0,10]
k = 2
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var smallestRangeI = function(nums, k) {
  const maxNum = Math.max(...nums);
  const minNum = Math.min(...nums);
  return Math.max(maxNum - minNum - 2 * k, 0);
}
console.log(smallestRangeI(nums,k))

var smallestRangeI = function(nums, k) {
  return Math.max(Math.max(...nums) - Math.min(...nums) - 2 * k, 0);
}
console.log(smallestRangeI(nums,k))

