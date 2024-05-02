// 2373. Largest Local Values in a Matrix
grid = [[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]
/**
 * @param {number[][]} grid
 * @return {number[][]}
 */
var largestLocal = function(grid) {
    const result = [];
    for (let i = 1; i < grid.length - 1; i++) {
      const row = [];
      for (let j = 1; j < grid[0].length - 1; j++) {
        let max_value = -Infinity;
        for (let o1 = -1; o1 <= 1; o1++) {
          for (let o2 = -1; o2 <= 1; o2++) {
            max_value = Math.max(max_value, grid[i + o1][j + o2]);
          }
        }
        row.push(max_value);
      }
      result.push(row);
    }
    return result;
};
console.log(largestLocal(grid));  