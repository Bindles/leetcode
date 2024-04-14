// 2678. Number of Senior Citizens
//details = ["7868190130M7522","5303914400F9211","9273338290F4010"]
//SOL
impl Solution {
    pub fn count_seniors(details: Vec<String>) -> i32 {
        let mut res = 0;
        for num in details.iter() {
            if num[11..13].parse::<i32>().unwrap() > 60 {
                res += 1;
            }
        }
        res
    }
}

fn main() {
    let details = vec![
        String::from("7868190130M7522"),
        String::from("5303914400F9211"),
        String::from("9273338290F4010"),
    ];
    println!("{}", Solution::count_seniors(details)); // Output: 2
}