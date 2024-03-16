//2389. Longest Subsequence With Limited Sum
nums = [4,5,2,1]
queries = [3,10,21]
/**
 * @param {number[]} nums
 * @param {number[]} queries
 * @return {number[]}
 */
var answerQueries = function(nums, queries) {
    nums.sort((a, b) => a - b);
    const prefixSums = nums.reduce((result, value) => {
        result.push((result[result.length - 1] || 0) + value);
        return result;
    }, []);

    return queries.reduce((results, query) => {
        const index = prefixSums.findIndex(val => val > query);
        results.push(index === -1 ? prefixSums.length : index);
        return results;
    }, []);
}
console.log(answerQueries(nums,queries))