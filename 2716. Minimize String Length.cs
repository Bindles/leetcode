// 2716. Minimize String Length
// s = "aaabc"
//SOL
public class Solution {
    public int MinimizedStringLength(string s) {
        Dictionary<char, int> charCount = new Dictionary<char, int>();
        
        foreach (char c in s) {
            if (charCount.ContainsKey(c)) {
                charCount[c]++;
            } else {
                charCount[c] = 1;
            }
        }
        return charCount.Count;
    }
}

