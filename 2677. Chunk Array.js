// 2677. Chunk Array
arr = [1,9,6,3,2]
size = 3
/**
 * @param {Array} arr
 * @param {number} size
 * @return {Array}
 */
var chunk = function(arr, size) {
 return arr.reduce((acc, _elem, index) => {
    if (index % size === 0) {
      acc.push(arr.slice(index, index + size));
    }
    return acc;
  }, []);
}
console.log(chunk(arr,size))
