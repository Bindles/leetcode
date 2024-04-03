// JAVASCRIPT
// 959. Regions Cut By Slashes.rb#* 959. Regions Cut By Slashes
grid = [" /","/ "]
/**
 * @param {string[]} grid
 * @return {number}
 */
//SOL
var regionsBySlashes = function(grid) {
    let n = grid.length * 3;
    let res = 0;
    
    let newGrid = Array(n).fill().map(() => Array(n).fill(0));

    let visit = (i, j) => {
        if (i < 0 || i >= n || j < 0 || j >= n || newGrid[i][j]) return;
        newGrid[i][j] = 1;
        visit(i + 1, j);
        visit(i - 1, j);
        visit(i, j + 1);
        visit(i, j - 1);
    }

    for (let i = 0; i < grid.length; i++) {
        for (let j = 0; j < grid[i].length; j++) {
            let x = i * 3;
            let y = j * 3;

            if (grid[i][j] === '/') {
                newGrid[x][y + 2] = 1;
                newGrid[x + 1][y + 1] = 1;
                newGrid[x + 2][y] = 1;
            } else if (grid[i][j] === '\\') {
                newGrid[x][y] = 1;
                newGrid[x + 1][y + 1] = 1;
                newGrid[x + 2][y + 2] = 1;
            }
        }
    }

    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n; j++) {
            if (!newGrid[i][j]) {
                res++;
                visit(i, j);
            }
        }
    }

    return res;
};
console.log(regionsBySlashes(grid))