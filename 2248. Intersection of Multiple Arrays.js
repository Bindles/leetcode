// 2248. Intersection of Multiple Arrays
nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
/**
 * @param {number[][]} nums
 * @return {number[]}
 */
var intersection = function(nums) {
  let arr=nums[0];
  for (i=1;i<nums.length;i++){ arr=arr.filter(e => nums[i].indexOf(e) !== -1); } 
  return arr.sort((a,b)=>a-b);
};
console.log(intersection(nums))

