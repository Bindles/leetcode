//3077. Maximum Strength of K Disjoint Subarrays
nums = [1,2,3,-1,2]
k = 3
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var maximumStrength = function(nums, k) {
  var dp0 = Array(k).fill().map(() => Array(nums.length).fill(-Infinity));
  var dp1 = Array(k).fill().map(() => Array(nums.length).fill(-Infinity));
  dp1[k - 1][0] = nums[0] * k;

  for (var i = 1; i < nums.length; ++i) {
    for (var j = k - 1; j >= 0; --j) {
      dp0[j][i] = Math.max(dp0[j][i - 1], dp1[j][i - 1]);
      dp1[j][i] = Math.max(dp1[j][i - 1], dp0[j + 1]?.[i] || 0) + nums[i] * (j + 1) * (j & 1 ? -1 : 1);
    }
  }

  return Math.max(...dp1[0]);
};
console.log(maximumStrength())