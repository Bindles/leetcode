// 2551. Put Marbles in Bags
weights = [1,3,5,1]; k = 2
/**
 * @param {number[]} weights
 * @param {number} k
 * @return {number}
 */
var putMarbles = function(weights, k) {
    if (k === 1) return 0;
    
    const w = [];
    for (let i = 0; i < weights.length - 1; i++) {
        w.push(weights[i] + weights[i+1]);
    }
    w.sort((a, b) => a - b);
    const lastSum = w.slice(-k+1).reduce((acc, curr) => acc + curr, 0);
    const firstSum = w.slice(0, k-1).reduce((acc, curr) => acc + curr, 0);
    return lastSum - firstSum;
};
console.log(putMarbles(weights, k))
