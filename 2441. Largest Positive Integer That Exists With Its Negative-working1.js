//2441. Largest Positive Integer That Exists With Its Negative
nums = [-1,2,-3,3]
/**
 * @param {number[]} nums
 * @return {number}
 */
var findMaxK = function(nums) {
    return nums.filter(num => num > 0).sort((a,b) => b - a)[0]
};
console.log(findMaxK(nums))
var findMaxK = function(nums) {
  return nums.filter(num => num * -1 === num)
};
console.log(findMaxK(nums))
var findMaxK = function(nums) {
  return nums.map(num => num * -1 === num)
};
console.log(findMaxK(nums))