// 1. Two Sum
let nums = vec![2, 7, 11, 15];
let target = 9;
//FAST
use std::collections::HashMap;
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map = HashMap::new();
        
        for (i, &num) in nums.iter().enumerate() {
            if let Some(&j) = map.get(&(target - num)) {
                return vec![i as i32, j as i32];
            }
            map.insert(num, i);
        }
        
        vec![]
    }
}
let result_fast = Solution::two_sum(nums.clone(), target);
println!("FAST: {:?}", result_fast);

//ORIG
impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
      for i in 0..nums.len() {
        for j in (i+1)..nums.len() {
          if nums[i] + nums[j] == target{
            return vec![i as i32,j as i32]  
            } 
        }
      }
        return vec![]
    }
}
let result = Solution::two_sum(nums.clone(), target);
println!("{:?}", result);