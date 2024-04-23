// 2634. Filter Elements from Array
arr = [0,10,20,30]; fn = function greaterThan10(n) { return n > 10; }
/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var filter = function(arr, fn) {
    let result=[];
    for (let i=0; i < arr.length; i++) {
        if (fn(arr[i], i)) {
            result.push(arr[i])
        }
    }
    return result
};
console.log(filter(arr, fn))

//.filter
var filter = function(arr, fn) {
    return arr.filter(fn)
};
console.log(filter(arr, fn))