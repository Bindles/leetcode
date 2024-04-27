// 1437. Check If All 1's Are at Least Length K Places Away
nums = [1,0,0,0,1,0,0,1]; k = 2

impl Solution {
    pub fn k_length_apart(nums: Vec<i32>, k: i32) -> bool {
        let mut prev_one_index: Option<usize> = None;
        
        for (i, num) in nums.iter().enumerate() {
            if *num == 1 {
                if let Some(prev_index) = prev_one_index {
                    if (i - prev_index - 1) < k as usize {
                        return false;
                    }
                }
                prev_one_index = Some(i);
            }
        }
        true
    }
}

fn main() {
  let nums = vec![1, 0, 0, 0, 1, 0, 0, 1];
  let k = 2;
  let result = Solution::k_length_apart(nums, k);
  println!("{}", result); // => true
}



//RUBY

// impl Solution {
//   pub fn k_length_apart(nums: Vec<i32>, k: i32) -> bool {
//       let mut space = k;

//       for num in nums {
//           if num == 1 {
//               if space < k {
//                   return false;
//               }
//               space = 0;
//           } else {
//               space += 1;
//           }
//       }

//       return true;
//   }
// }
