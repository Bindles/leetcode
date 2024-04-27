// 2575. Find the Divisibility Array of a String
word = "998244353"; m = 3
/**
 * @param {number[]} nums
 * @param {number} lower
 * @param {number} upper
 * @return {number}
 */
var countFairPairs = function(nums, lower, upper) {
    res=[]
    rem=0
    for (var i=0; i<word.length; i++){
      rem = (rem * 10 + parseInt(word[i])) % m;
      if (rem % m === 0){
        res.push(1)
      } else {
        res.push(0)
      }
    }
    return res
};
console.log(countFairPairs(word, m))