//2894. Divisible and Non-divisible Sums Difference
n = 10;m = 3        
/**
 * @param {number} n
 * @param {number} m
 * @return {number}
 */
var differenceOfSums = function(n, m) {
  const sum = array => array.reduce((acc, num) => acc + num, 0)
let nums = [[], []]; 
  for (i=0; i<n; i++) {
      i % m == 0 ? nums[1].push(i) : nums[0].push(i)
  } 
  console.log(nums[0])
  console.log(nums[1])
  console.log(sum(nums[0]))
  console.log((Math.abs(sum(nums[1]))))
  console.log(Math.abs(sum(nums[0]) - sum(nums[1])));

};

//WORKS|VS THIS ONE PLZ[for (i=0; i<=n; i++) {i % m === 0 ? nums[1].push(i) : nums[0].push(i)}]
var differenceOfSums = function(n, m) {
  const nums = [[], []];
  for (let i = 1; i <= n; i++) {
    nums[i % m === 0 ? 1 : 0].push(i);
  }
  const sum = arr => arr.reduce((acc, curr) => acc + curr, 0);
  return sum(nums[0]) - sum(nums[1]);
};



console.log(differenceOfSums(n,m))

arr1=[1,2]
console.log(arr1.reduce((acc, num) => acc + num, 0))
const sum = array => array.reduce((acc,num) => acc + num, 0)
console.log(sum(arr1))
console.log(Math.abs(sum(arr1)))