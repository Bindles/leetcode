//2540. Minimum Common Value
/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number}
 */
var getCommonz = function(nums1 = [1,2,3], nums2 = [2,4]) {
    return nums1.map(num => nums2.includes(num) ? num : 3)
};
var getCommonx = function(nums1 = [1,2,3], nums2 = [2,4]) {
  return Math.min(...nums1.map(num => nums2.includes(num) ? num : Infinity))
};
var getCommonq = function(nums1 = [1,2,3], nums2 = [2,4]) {
  return Math.min(...nums1.map(num => nums2.includes(num) ? num : undefined).filter(x => x !== undefined))
};
var getCommonw = function(nums1 = [1,2,3], nums2 = [2,4]) {
  return Math.min(...nums1.map(num => nums2.includes(num) ? num : undefined).filter(x => x !== undefined))
};
var getCommonjj = function(nums1 = [1,2,3], nums2 = [2,4]) {
  let min = Infinity;
  for (const num of nums1) {
      if (nums2.includes(num) && num < min) min = num;
  }
  return min === Infinity ? undefined : min;
};
var getCommonz = function(nums1 = [1,2,3], nums2 = [2,4]) {
  let min = 2
  return min ? min : -1;
};
var getCommon = function(nums1 = [1,2,3], nums2 = [2,4]) {
  let min;
  for (const num of nums1) {
      if (nums2.includes(num) && num < min) {
          min = num;
      }
  }
  return min ? min : -1;
};
console.log(getCommon())


const nums1 = [1, 3, 2, 8, 9];
const nums2 = [3, 2, 6, 7];

const numSet = new Set(nums1);
for (const num of nums2) {
    if (numSet.has(num)) {
        console.log("Common number found:", num);
        break; // Stop iterating as soon as a common number is found
    }
}

