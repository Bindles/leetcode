s = "a1c1e1"
/**
 * @param {string} s
 * @return {string}
 */

//TESTS
console.log(s)
console.log(Array.from(s))
console.log(s.split(''))

var replaceDigits = function(s) {
  const x = Array.from(s).filter((char, index) => index % 2 === 0);
  const y = Array.from(s).filter((char, index) => index % 2 !== 0);
  return x.map((char, index) => [char, y[index]]);
}
console.log(replaceDigits(s)); // Output: [["a", "1"], ["c", "1"], ["e", "1"]]

function replaceDigits(s) {
  //return Array.from(s).reduce((acc, char, index) => { <= USE EITHER
  return s.split("").reduce((acc, char, index) => {
    if (index % 2 === 0) {
      acc.push([char, s[index + 1]]);
    }
    return acc;
  }, []);
}
console.log(replaceDigits(s))

function eachSlice(array, size) {
  const result = [];
  for (let i = 0; i < array.length; i += size) {
    result.push(array.slice(i, i + size));
  }
  return result;
}
console.log(eachSlice(s, 2)); // Output: [[1, 2], [3, 4], [5, 6]]

function eachSlice(s, size) {
  const result = [];
  const chars = Array.from(s);
  console.log
  for (let i = 0; i < chars.length; i += size) {
    result.push(chars.slice(i, i + size).join(""));
  }
  return result;
}

//console.log(eachSlice(s, 2)); // Output: ["a1", "c1", "e1"]




