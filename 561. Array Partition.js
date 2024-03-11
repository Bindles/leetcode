//561. Array Partition
nums = [1,4,3,2]
/**
 * @param {number[]} nums
 * @return {number}
 */
var arrayPairSum = function(nums) {
  nums.sort((a, b) => a - b);
  return nums.filter((num, index) => index % 2 === 0).reduce((acc, val) => acc + val, 0);
}
console.log(arrayPairSum(nums))