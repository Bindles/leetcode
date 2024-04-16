// 2279. Maximum Bags With Full Capacity of Rocks
capacity = [2,3,4,5]; rocks = [1,2,4,4]; additionalRocks = 2
//capacity = [2,3,8,7]; rocks = [1,2,4,4]; additionalRocks = 2
/**
 * @param {number[]} capacity
 * @param {number[]} rocks
 * @param {number} additionalRocks
 * @return {number}
 */
var maximumBags = function(capacity, rocks, additionalRocks) {
  let x = rocks.map((rock, index) => [rock, capacity[index]]);
  x.sort((a, b) => a[1] - a[0] - (b[1] - b[0]));
  for (let i = 0; i < x.length; i++) {
    let [rock, cap] = x[i];
    if (rock < cap && additionalRocks >= (cap - rock)) {
      additionalRocks -= (cap - rock);
      x[i][0] += (cap - rock);
    }
  }
  return x.filter(pair => pair[0] === pair[1]).length;
}
console.log(maximumBags(capacity, rocks, additionalRocks));