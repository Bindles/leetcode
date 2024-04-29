// 263. Ugly Number
n=6
//MY SOL | for...of
function isUgly(n) {
    if (n <= 0) {
        return false;
    }
    for (let factor of [2, 3, 5]) {
        while (n % factor === 0) {
            n /= factor;
        }
    }
    return n === 1;
}
console.log(isUgly(n))

//MISC
for (let factor of [2, 3, 5]) {
    console.log(factor)
}

const str = "hello";
for (const char of str) {
    console.log(char);
}
