/**
 * @param {number} k
 * @return {number}
 */
var minOperations = function(k) {
    let operations = 0;
    let sum = 1; // Initial sum
    let num = 1; // Initial number in the array
    
    while (sum < k) {
        if (sum + num <= k) {
            sum += num;
            num *= 2;
        } else {
            const remaining = k - sum;
            const extraOps = Math.ceil(remaining / num);
            operations += extraOps;
            break;
        }
        operations++;
    }
    
    return operations;
};

// Test cases
console.log(minOperations(11)); // Output: 5
console.log(minOperations(1)); // Output: 0
