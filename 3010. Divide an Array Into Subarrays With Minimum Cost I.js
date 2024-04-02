// 3010. Divide an Array Into Subarrays With Minimum Cost I
nums = [1,2,3,12]
/**
 * @param {number[]} nums
 * @return {number}
 */
var minimumCost = function(nums) {
  const sortedNums = nums.slice(1).sort((a, b) => a - b);
  const min1 = sortedNums[0];
  const min2 = sortedNums[1];
  return nums[0] + min1 + min2;
};
console.log(minimumCost(nums))
