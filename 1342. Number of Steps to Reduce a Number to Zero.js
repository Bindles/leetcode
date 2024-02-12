/**
 * @param {number} num
 * @return {number}
 */ //MY SOL
var numberOfSteps = function(num) {
  steps=0
  while (num > 0) {
    num % 2 == 0? num /= 2 : num--;
    steps++;
  }
  return steps
}

//MY SOL | CONSOLE.LOG
function number_of_steps(num) {
  steps=0
  while (num > 0) {
    num % 2 == 0? num /= 2 : num--;
    steps++;
  }
  console.log(steps)
}
number_of_steps(14);