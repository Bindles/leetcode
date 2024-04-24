//JS
// 1137. N-th Tribonacci Number
n = 6
//SOL
function tribonacci(n) {
    let a = 0, b = 1, c = 1;
    if (n < 3) return [a, b, c][n];
    
    for (let i = 0; i < n - 2; i++) {
        let temp = a + b + c;
        a = b;
        b = c;
        c = temp;
    }
    return c;
}     
console.log(tribonacci(n))
        