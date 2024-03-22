// 1387. Sort Integers by The Power Value
lo = 12
hi = 15
k = 2
// MY SOL 1
/**
 * @param {number} lo
 * @param {number} hi
 * @param {number} k
 * @return {number}
 */
var getKth = function(lo, hi, k) {
    function get_pow(num, ans) {
        if (num === 1) return ans;
        num = num % 2 === 0 ? num / 2 : 3 * num + 1;
        ans += 1;
        return get_pow(num, ans);
    }
    
    const maps = new Map();
    for (let i = lo; i <= hi; i++) {
        maps.set(i, get_pow(i, 0));
    }

    const sortedMaps = [...maps.entries()].sort((a, b) => a[1] - b[1]);
    const ans = sortedMaps.map(pair => pair[0]);
    return ans[k - 1];
}
console.log(getKth(lo, hi, k));

//SOL 2 | FAST
var getKth = function(lo, hi, k) {
    const memo = {};

    function get_steps(num, memo) {
        if (num === 1) return 1;
        if (memo[num]) return memo[num];

        if (num % 2 === 0) {
            memo[num] = get_steps(num / 2, memo) + 1;
        } else {
            memo[num] = get_steps(num * 3 + 1, memo) + 1;
        }

        return memo[num];
    }

    const ans = [];
    for (let i = lo; i <= hi; i++) {
        ans.push({ 'val': i, 'steps': get_steps(i, memo) });
    }

    ans.sort((a, b) => {
        if (a.steps !== b.steps) return a.steps - b.steps;
        return a.val - b.val;
    });

    return ans[k - 1].val;
}
console.log(getKth(lo, hi, k));