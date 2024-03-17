// 2206. Divide Array Into Equal Pairs
//nums = [3,2,3,2,2,2]
nums=[1,2,3,4]
/**
 * @param {number[]} nums
 * @return {boolean}
 */
// SOL
var divideArray = function(nums) {
    const counts = new Map();
    for (const num of nums) {
        counts.set(num, (counts.get(num) || 0) + 1);
    }
    for (const count of counts.values()) {
        if (count % 2 !== 0) return false;
    }
    return true;
}
console.log(divideArray(nums))