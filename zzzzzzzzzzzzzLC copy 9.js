/**
 * @param {string[]} words
 * @return {number}
 */
var maxPalindromesAfterOperations = function(words) {
    const n = words.length;
    let maxPalindromes = 0;

    // Helper function to check if a string is a palindrome
    function isPalindrome(s) {
        let left = 0, right = s.length - 1;
        while (left < right) {
            if (s[left] !== s[right]) {
                return false;
            }
            left++;
            right--;
        }
        return true;
    }

    // Iterate through each word
    for (let i = 0; i < n; i++) {
        let word = words[i];
        let palindromeCounts = new Array(word.length).fill(0);

        // Try all possible swaps within the current word
        for (let j = 0; j < word.length; j++) {
            for (let k = j; k < word.length; k++) {
                // Swap characters
                let swappedWord = word.substring(0, j) + word[k] + word.substring(j + 1, k) + word[j] + word.substring(k + 1);
                
                // Count palindromes after the swap
                if (isPalindrome(swappedWord)) {
                    palindromeCounts[j]++;
                    if (k !== j) {
                        palindromeCounts[k]++;
                    }
                }
            }
        }

        // Get the maximum number of palindromes achievable for the current word
        let maxPalindromesForWord = Math.max(...palindromeCounts);

        // Update the overall maximum number of palindromes
        maxPalindromes += maxPalindromesForWord;
    }

    return maxPalindromes;
};

// Test cases
console.log(maxPalindromesAfterOperations(["abbb","ba","aa"])); // Output: 9
console.log(maxPalindromesAfterOperations(["abc","ab"])); // Output: 6
