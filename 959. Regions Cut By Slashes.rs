// RUST
// 959. Regions Cut By Slashes.rb#* 959. Regions Cut By Slashes
// grid = [" /","/ "]

//SOL
impl Solution {
    pub fn regions_by_slashes(grid: Vec<String>) -> i32 {
        let n = grid.len() * 3;
        let mut res = 0;
        let mut new_grid = vec![vec![0; n]; n];

        fn visit(grid: &mut Vec<Vec<i32>>, i: i32, j: i32, n: i32) {
            if i < 0 || i >= n || j < 0 || j >= n || grid[i as usize][j as usize] == 1 {
                return;
            }
            grid[i as usize][j as usize] = 1;
            visit(grid, i + 1, j, n);
            visit(grid, i - 1, j, n);
            visit(grid, i, j + 1, n);
            visit(grid, i, j - 1, n);
        }

        for (i, row) in grid.iter().enumerate() {
            for (j, &char) in row.as_bytes().iter().enumerate() {
                let x = i * 3;
                let y = j * 3;
                if char == b'/' {
                    new_grid[x][y + 2] = 1;
                    new_grid[x + 1][y + 1] = 1;
                    new_grid[x + 2][y] = 1;
                } else if char == b'\\' {
                    new_grid[x][y] = 1;
                    new_grid[x + 1][y + 1] = 1;
                    new_grid[x + 2][y + 2] = 1;
                }
            }
        }

        for i in 0..n {
            for j in 0..n {
                if new_grid[i][j] == 0 {
                    res += 1;
                    visit(&mut new_grid, i as i32, j as i32, n as i32);
                }
            }
        }

        res
    }
}

// Example usage
fn main() {
    let grid = vec![" /".to_string(), "/ ".to_string()];
    println!("{}", Solution::regions_by_slashes(grid)); // Output: 2
}
