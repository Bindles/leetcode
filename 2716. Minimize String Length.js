// 2716. Minimize String Length
s = "aaabc"
//SOL
/**
 * @param {string} s
 * @return {number}
 */
var minimizedStringLength = function(s) {
  const charCount = {};
  for (const char of s) {
      charCount[char] = (charCount[char] || 0) + 1;
  }
  return Object.keys(charCount).length;
};
console.log(minimizedStringLength(s))

