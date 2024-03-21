#* 1332. Remove Palindromic Subsequences
s = "ababa"
# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
  s.reverse == s ? 1 : 2
end
p remove_palindrome_sub(s)