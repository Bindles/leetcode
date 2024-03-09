/**
 * @param {string[]} words
 * @param {character} x
 * @return {number[]}
 */

/**
 * @param {string[]} words
 * @param {character} x
 * @return {number[]}
 */
//SOL 1.2
var findWordsContaining = function(words, x) {
  return words.map((word, index) => word.includes(x) ? index : undefined).filter(index => index !== undefined);
};

//SOL 1.1
var findWordsContaining = function(words, x) {
  const includesx = words.map((word, index) => word.includes(x) ? index : undefined).filter(index => index !== undefined);
  return includesx
};

//SOL 1
var findWordsContaining = function(words, x) {
  const includesx = words.map((word, index) => {
  if (word.includes(x)) {
      return index;
  }
  }).filter(index => index !== undefined);
  return includesx
};

