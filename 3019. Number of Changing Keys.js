// 3019. Number of Changing Keys
s = "aAbBcC"
/**
 * @param {string} s
 * @return {number}
 */
var countKeyChanges = function(s) {
  let keyChangesCount = 0;
  for (let i = 1; i < s.length; i++) {
    if (s[i - 1].toLowerCase() !== s[i].toLowerCase()) keyChangesCount++;
  }
  return keyChangesCount;
};
console.log(countKeyChanges(s))

