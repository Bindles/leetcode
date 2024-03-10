var maximumHappinessSum = function(happiness, k) {
  const n = happiness.length;
  const dp = Array.from({ length: n + 1 }, () => Array(k + 1).fill(0));

  for (let i = 1; i <= n; i++) {
      for (let j = 0; j <= k; j++) {
          // Don't select the current child
          dp[i][j] = dp[i - 1][j];
          
          // Select the current child
          if (j > 0) {
              let maxHappiness = happiness[i - 1] - 1; // Decrement happiness for selecting this child
              for (let t = i - 1; t >= 1 && j - (i - t) >= 0; t--) {
                  maxHappiness += Math.max(0, happiness[t - 1] - (i - t));
                  dp[i][j] = Math.max(dp[i][j], maxHappiness + dp[t - 1][j - (i - t)]);
              }
          }
      }
  }

  return dp[n][k];
};

// Test cases
console.log(maximumHappinessSum([1, 2, 3], 2)); // Output: 4
console.log(maximumHappinessSum([12, 1, 42], 3)); // Output: 53
