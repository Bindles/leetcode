// 18. 4Sum
nums = [1,0,-1,0,-2,2]; target = 0
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[][]}
 */
var fourSum = function(nums, target) {
  nums.sort((a, b) => a - b);
  let result = [];
  let visited = new Set();

  for (let i = 0; i < nums.length - 3; i++) {
    for (let j = i + 1; j < nums.length - 2; j++) {
      let start = j + 1,
          end = nums.length - 1;

      while (start < end) {
        let sum = nums[i] + nums[j] + nums[start] + nums[end];
        
        if (sum === target) {
          let combination = [nums[i], nums[j], nums[start], nums[end]];
          let sortedCombination = combination.sort((a, b) => a - b);
          let key = sortedCombination.join();
          
          if (!visited.has(key)) {
            result.push(sortedCombination);
            visited.add(key);
          }
        }
        
        if (sum > target) {
          end--;
        } else {
          start++;
        }
      }
    }
  }
  return result;
};
console.log(fourSum(nums,target))