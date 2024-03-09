//1929. Concatenation of Array
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var getConcatenation = function(nums = [1,2,1]) {
    return [...nums, ...nums]
};
console.log(getConcatenation())