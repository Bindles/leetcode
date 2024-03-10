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
var getCommonzzz = function(nums1 = [1,2,3], nums2 = [2,4]) {
  return nums1.find(num => nums2.includes(num))
};

//cllosest to ruby [ (nums1 + nums2).min || -1 ], should timeout:
const getCommonxx = (nums1 = [1, 2, 3], nums2 = [2, 4]) => {
  const common = nums1.filter(num => nums2.includes(num));
  return common.length > 0 ? Math.min(...common) : -1;
};

console.log(getCommon()); // Output will vary based on input arrays

var getCommon = function(nums1 = [1,2,3], nums2 = [2,4]) {
  const nums1set = new Set(nums1);
     for (const num of nums2) {
         if (nums1set.has(num)) return num;
     }
     return -1;
};
console.log(getCommon())


