function isPalindrome(word) {
  let left = 0, right = word.length - 1;
  while (left < right) {
      if (word[left] !== word[right]) {
          return false;
      }
      left++;
      right--;
  }
  return true;
}

function maxPalindromesAfterOperations(words) {
  const n = words.length;
  let count = 0;
  
  function countPalindromes(arr) {
      let palindromeCount = 0;
      for (let k = 0; k < arr.length; k++) {
          if (isPalindrome(arr[k])) {
              palindromeCount++;
          }
      }
      return palindromeCount;
  }

  for (let i = 0; i < n; i++) {
      for (let j = i; j < n; j++) {
          for (let x = 0; x < words[i].length; x++) {
              for (let y = 0; y < words[j].length; y++) {
                  let tempI = words[i][x];
                  let tempJ = words[j][y];
                  words[i] = words[i].substring(0, x) + tempJ + words[i].substring(x + 1);
                  words[j] = words[j].substring(0, y) + tempI + words[j].substring(y + 1);            

                  count = Math.max(count, countPalindromes(words));
              }
          }
      }
  }
  return count;
}

// Test cases
console.log(maxPalindromesAfterOperations(["abbb","ba","aa"])); // Output: 3
console.log(maxPalindromesAfterOperations(["abc","ab"])); // Output: 2
