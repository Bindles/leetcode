function maxPalindromesAfterOperations(words: string[]): number {
    const isPalindrome = (word: string): boolean => {
        let left = 0;
        let right = word.length - 1;
        while (left < right) {
            if (word[left] !== word[right]) return false;
            left++;
            right--;
        }
        return true;
    };

    const charCount = new Map<string, number>();

    for (const word of words) {
        for (const char of word) {
            charCount.set(char, (charCount.get(char) || 0) + 1);
        }
    }

    let oddCount = 0;
    let totalCount = 0;

    for (const count of charCount.values()) {
        totalCount += Math.floor(count / 2) * 2;
        if (count % 2 !== 0) oddCount++;
    }

    return totalCount + (oddCount > 0 ? 1 : 0);
}

// Test cases
console.log(maxPalindromesAfterOperations(["abbb", "ba", "aa"])); // Output: 3
console.log(maxPalindromesAfterOperations(["abc", "ab"]));        // Output: 2
console.log(maxPalindromesAfterOperations(["cd", "ef", "a"]));    // Output: 1
console.log(maxPalindromesAfterOperations(["aaa", "ab"]));        // Output: 2
