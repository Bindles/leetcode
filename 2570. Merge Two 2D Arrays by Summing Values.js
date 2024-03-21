// 2570. Merge Two 2D Arrays by Summing Values
// LEARN => NUM GROUPING NUM MERGING MERGE TO_H GROUP_BY COMBINE ARRAY ARRAY MERGING ARRAY TO HASH 
nums1 = [[1,2],[2,3],[4,5]]
nums2 = [[1,4],[3,2],[4,1]]
/**
 * @param {number[][]} nums1
 * @param {number[][]} nums2
 * @return {number[][]}
 */
//MY SOL
var mergeArrays = function(nums1, nums2) {
  const mergedMap = new Map();
  
  [...nums1, ...nums2].forEach(([key, value]) => {
    if (!mergedMap.has(key)) {
      mergedMap.set(key, []);
    }
    mergedMap.get(key).push(value);
  });
  
  const transformedValues = new Map([...mergedMap.entries()].map(([key, value]) => [key, value.reduce((acc, curr) => acc + curr, 0)]));
  const sortedEntries = [...transformedValues.entries()].sort((a, b) => a[0] - b[0]);
  return sortedEntries;
}
console.log(mergeArrays(nums1,nums2))

//SOL 2 | CONCISE
var mergeArrays = function(nums1, nums2) {
  const mergedMap = new Map();
  [...nums1, ...nums2].forEach(([k, v]) => {
      mergedMap.set(k, (mergedMap.get(k) || 0) + v);
  });
  return [...mergedMap.entries()].sort((a, b) => a[0] - b[0]);
}
console.log(mergeArrays(nums1,nums2))