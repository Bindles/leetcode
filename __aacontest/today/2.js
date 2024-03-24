var minOperations = function(k) {
  let operations = 0;
  let nums = [1];
  
  while (nums.reduce((acc, val) => acc + val, 0) < k) {
      const maxNum = Math.max(...nums);
      if (nums.reduce((acc, val) => acc + (val * 2), 0) >= k) {
          nums[nums.indexOf(maxNum)] *= 2;
          break;
      } else {
          nums = nums.map(num => num + 1);
      }
      operations++;
  }
  
  return operations;
};

// Test cases
console.log(minOperations(11)); // Output: 5 EXPECTED 5 | PASS
console.log(minOperations(1)); // Output: 0 EXPECTED 0 | PASS
console.log(minOperations(2)); // Output: 0 EXPECTED: 1 | FAIL
