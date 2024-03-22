// 1200. Minimum Absolute Difference
arr = [4,2,1,3]

// MY SOL 2| OPTIMIZED A LITTLE
/**
 * @param {number[]} arr
 * @return {number[][]}
 */
var minimumAbsDifference = function(arr) {
    arr.sort((a, b) => a - b);
    let minDiff = Infinity;
    const groupedDiffs = {};

    for (let i = 1; i < arr.length; i++) {
        const diff = arr[i] - arr[i - 1];
        minDiff = Math.min(minDiff, diff);
        if (!groupedDiffs.hasOwnProperty(diff)) {
            groupedDiffs[diff] = [];
        }
        groupedDiffs[diff].push([arr[i - 1], arr[i]]);
    }

    return groupedDiffs[minDiff];
}
console.log(minimumAbsDifference(arr))

// SOL 1
var minimumAbsDifference = function(arr) {
    const sortedArr = arr.slice().sort((a, b) => a - b);
    const diffs = sortedArr.slice(1).map((b, i) => [b - sortedArr[i], [sortedArr[i], b]]);
    const groupedDiffs = {};

    for (const [diff, pair] of diffs) {
        if (!groupedDiffs.hasOwnProperty(diff)) {
            groupedDiffs[diff] = [];
        }
        groupedDiffs[diff].push(pair);
    }

    const minDiff = Math.min(...Object.keys(groupedDiffs));
    return groupedDiffs[minDiff];
}
console.log(minimumAbsDifference(arr))