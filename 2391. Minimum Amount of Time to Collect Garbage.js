// 2391. Minimum Amount of Time to Collect Garbage
garbage = ["G","P","GP","GG"]
travel = [2,4,3]
/**
 * @param {string[]} garbage
 * @param {number[]} travel
 * @return {number}
 */
var garbageCollection = function(garbage, travel) {
    return ['G', 'P', 'M'].reduce((acc, char) => {
        const index = garbage.slice().reverse().findIndex(garb => garb.includes(char));
        const lastIndex = index !== -1 ? garbage.length - index - 1 : 0;
        return acc + travel.slice(0, lastIndex).reduce((sum, val) => sum + val, 0);
    }, 0) + garbage.join('').length;
}
console.log(garbageCollection(garbage, travel));