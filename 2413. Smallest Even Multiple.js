//2413. Smallest Even Multiple
/**
 * @param {number} n
 * @return {number}
 */
var smallestEvenMultiple = function(n=5) {
    return n % 2 === 0 ? n : n * 2
};
console.log(smallestEvenMultiple());//10