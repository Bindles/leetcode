// 2716. Minimize String Length
// s = "aaabc"
//SOL
use std::collections::HashMap;

impl Solution {
    pub fn minimized_string_length(s: String) -> i32 {
        let mut char_count = HashMap::new();
        
        for c in s.chars() {
            *char_count.entry(c).or_insert(0) += 1;
        }
        
        char_count.len() as i32
    }
}
