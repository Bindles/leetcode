//509. Fibonacci Number
n=7
const l = console.log.bind(console)
/**
 * @param {number} n
 * @return {number}
 */
var fib = function(n) {
  return (n === 0 || n === 1) ? n : (fib(n - 1) + fib (n - 2));
};
console.log(fib(n))