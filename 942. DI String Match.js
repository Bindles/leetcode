// 942. DI String Match
s = "IDID"
/**
 * @param {string} s
 * @return {number[]}
 */
var diStringMatch = function(s) {
    let source = Array.from({length: s.length + 1}, (_, i) => i);
    let res = [];
    for (let char of s) {
        char === 'I' ? res.push(source.shift()) : res.push(source.pop());
    }
    res.push(source.pop());
    return res;
};
console.log(diStringMatch(s))