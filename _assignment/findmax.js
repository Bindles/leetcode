function findMax(array) {
  let max= -Infinity;
  for (let arr of array) {
    console.log(arr)
    if (arr > max) {
      max = arr;
    }
  }
  return max
}


console.log(findMax([3, 7, 2, 9, 5])); // Output: 9
console.log(findMax([-5, -3, -9, -1])); // Output: -1
console.log(findMax([42])); // Output: 42
const abc = findMax([42])
console.log(abc); // Output: 42
