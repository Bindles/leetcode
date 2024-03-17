// 2215. Find the Difference of Two Arrays
// nums1 = [1,2,3]
// nums2 = [2,4,6]
nums1 = [1,2,3,3]
nums2 = [1,1,2,2]
/**
 * @param {number[]} nums1
 * @param {number[]} nums2
 * @return {number[][]}
 */
var findDifference = function(nums1, nums2) {
  const diff1 = nums1.filter(num => !nums2.includes(num));
  const diff2 = nums2.filter(num => !nums1.includes(num));
  return [Array.from(new Set(diff1)), Array.from(new Set(diff2))];
}
console.log(findDifference(nums1, nums2));