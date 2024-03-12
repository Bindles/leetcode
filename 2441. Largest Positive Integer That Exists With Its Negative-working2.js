//2441. Largest Positive Integer That Exists With Its Negative
nums = [-1,2,-3,3,-2]
/**
 * @param {number[]} nums
 * @return {number}
 */
var findMaxK = function(nums) {
    return nums.filter(num => num > 0).sort((a,b) => b - a)[0]
};
console.log(findMaxK(nums))
var findMaxK = function(nums) {
  const res = nums.filter(num => num > 0)
  console.log(res)
  res.filter(num => num * -1 === Math.abs(-num))
  return Math.abs(Math.max(...res))
};
console.log(findMaxK(nums))

var findMaxK = function(nums) {
  return nums.map(num => num * -1 === Math.abs(-num))
};
console.log(findMaxK(nums))
var findMaxK = function(nums) {
  const a = nums.filter(num => num > 0)
  const b = a.filter(num => nums.includes(-num))
  console.log(b)
  return b.length === 0 ? -1 : Math.max(...b);
};

var findMaxK = function(nums) {
  let setNums = new Set(nums); 
  let lp = -1; 
  for (let num of setNums) {
    if(setNums.has(-num) && num > 0 && num > lp)  lp = num;
  }
  return lp; 
};

var findMaxK = function(nums) {
  let setNums = new Set(nums); // Create a set to store unique numbers from the input array.
  let lp = -1; // Initialize the largest positive number found so far to -1.

  // Iterate through each number in the set of unique numbers.
  for (let num of setNums) {
    // Check if the set contains the negative of the current number, and if the current number is positive and larger than the largest positive number found so far.
    if (setNums.has(-num) && num > 0 && num > lp) lp = num; 
    // If the conditions are met, update the largest positive number found so far.
  }

  return lp; // Return the largest positive number found, or -1 if no such number exists.
};

console.log(findMaxK(nums))
