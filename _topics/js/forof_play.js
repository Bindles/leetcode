// 263. Ugly Number
n=6
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

for (let factor of [2, 3, 5]) {
    console.log(factor)
}

const str = "hello";
for (const char of str) {
    console.log(char);
}