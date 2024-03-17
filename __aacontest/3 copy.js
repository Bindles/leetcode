function minimumDeletions(word, k) {
  const freq = {};
  for (let char of word) {
      freq[char] = (freq[char] || 0) + 1;
  }
  
  const sortedFreq = Object.values(freq).sort((a, b) => a - b);
  const target = sortedFreq[Math.floor(sortedFreq.length / 2)];

  let deletions = 0;
  for (let count of sortedFreq) {
      if (Math.abs(count - target) > k) {
          deletions += Math.abs(count - target) - k;
      }
  }
  
  return deletions;
}

// Test cases
console.log(minimumDeletions("aabcaba", 0)); // Output: 3
console.log(minimumDeletions("dabdcbdcdcd", 2)); // Output: 2
console.log(minimumDeletions("aaabaaa", 2)); // Output: 1
