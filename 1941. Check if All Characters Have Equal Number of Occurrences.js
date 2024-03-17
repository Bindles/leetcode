// 1941. Check if All Characters Have Equal Number of Occurrences
s = "abacbc"
// @param {String} s
// @return {Boolean}
// SOL 1
var areOccurrencesEqual = function(s) {
  const charCounts = new Map();
  for (const char of s) {
    charCounts.set(char, (charCounts.get(char) || 0) + 1);
  }
  return new Set(charCounts.values()).size === 1;
}
console.log(areOccurrencesEqual(s))
