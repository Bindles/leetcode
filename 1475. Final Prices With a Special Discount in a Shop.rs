impl Solution {
    pub fn final_prices(prices: Vec<i32>) -> Vec<i32> {
        let n = prices.len();
        let mut res = Vec::new();

        for i in 0..n {
            let mut found_discount = false;
            for j in (i + 1)..n {
                if prices[j] <= prices[i] {
                    res.push(prices[i] - prices[j]);
                    found_discount = true;
                    break;
                }
            }
            if !found_discount {
                res.push(prices[i]);
            }
        }
        res
    }
}

fn main() {
    let prices = vec![8, 4, 6, 2, 3];
    let result = Solution::final_prices(prices);
    println!("{:?}", result); // Output: [4, 2, 4, 2, 3]
}
