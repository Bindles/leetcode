// 1769. Minimum Number of Operations to Move All Balls to Each Box
boxes = "110"
var minOperations = function(boxes) {
  const n = boxes.length;
  const result = new Array(n).fill(0);
  
  for (let i = 0; i < n; i++) {
      if (boxes[i] === "1") {
          for (let j = 0; j < n; j++) {
              if (j === i) {
                  continue;
              }
              result[j] += Math.abs(i - j);
          }
      }
  }
  return result;
};
console.log(minOperations(boxes));