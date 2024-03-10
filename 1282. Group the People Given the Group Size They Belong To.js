//1282. Group the People Given the Group Size They Belong To
/**
 * @param {number[]} groupSizes //<= group
 * @return {number[][]}
 */
var groupThePeople = function(group = [2,1,3,3,3,2]) {
  const res = []
  const hash = {}
    
  for (let i = 0; i < group.length; i++) {
    const num = group[i]
    hash[num] ? hash[num].push(i) : hash[num] = [i]
    
    if (hash[num].length === num) {
      res.push(hash[num])
      delete hash[num]
    }
  }
  return res
};
console.log(groupThePeople())