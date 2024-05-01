// 1984. Minimum Difference Between Highest and Lowest of K Scores
nums = [90]; k = 1
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
//s
 var minimumDifference = function(nums, k) {
    nums.sort((a,b)=>a-b)
    let min = Infinity;

    for(let i = 0; i <= nums.length-k; i++){
        min = Math.min(min, nums[i+k-1]-nums[i])
    }
    return min
}
console.log(minimumDifference(nums,k))


//s
var minimumDifference = function(nums, k) {
    nums.sort((a, b) => b - a);

    let result = (nums[0] - nums[k-1]);

    for(let i = 1; i < nums.length - k + 1; i++){
        let sum = nums[i] - nums[i+k-1];

        result = Math.min(sum, result)
    }

    return result;
};
console.log(minimumDifference(nums,k))