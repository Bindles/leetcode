// 977. Squares of a Sorted Array
nums = [-4,-1,0,3,10]
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var sortedSquares = function(nums) {
    return nums.map(num => num**2).sort((a,b) => a - b)
};