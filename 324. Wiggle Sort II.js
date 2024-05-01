// 324. Wiggle Sort II
nums = [1,5,1,1,6,4]
/**
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
//SOL 1
var wiggleSort = function(nums) {
    const n = nums.length;
    nums.sort((a, b) => a - b);
    const mid = Math.floor((n - 1) / 2);
    const sortedArray = nums.slice();
    for (let i = 0, j = mid; i < n; i += 2, j--) {
      nums[i] = sortedArray[j];
    }
    for (let i = 1, j = n - 1; i < n; i += 2, j--) {
      nums[i] = sortedArray[j];
    }
  };

//SOL 2
var wiggleSort = function(nums) {
    const tmp = [...nums];
    tmp.sort((a, b) => a - b);
  
    const n = nums.length;
    let i = 1, j = n - 1;
  
    for (let _ = 0; _ < 2; _++) {
      for (let k = i; k < n; k += 2) {
        nums[k] = tmp[j];
        j--;
      }
      i--;
    }
  }

// FASTEST SOL PPLS
var wiggleSort = function(nums) {
    const sorted = nums.toSorted((a, b) => a - b);
    const { length } = nums, mid = Math.floor(length / 2);
    let odd = length - 1, even = length % 2 === 0 ? mid - 1 : mid;
    for (let i = 0; i < length; i++) {
        nums[i] = (i % 2 === 0) ? sorted[even--] : sorted[odd--];
    }
};