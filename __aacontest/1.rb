# @param {String} s
# @return {Boolean}
#s = "leetcode"
s = "abcba"
def is_substring_present(s)
  (s.chars.length-1).times do |i|
    return true if s[i..i+1] == s[i..i+1].reverse
  end
end
p is_substring_present(s)