#* 2697. Lexicographically Smallest Palindrome
s = "egcfe"
# @param {String} s
# @return {String}
def make_smallest_palindrome(s)
    p s
    p s.reverse
    p x = s.chars.zip(s.chars.reverse)
    x.map(&:min).join
end
p make_smallest_palindrome(s)

def make_smallest_palindrome(s)
  szip = s.chars.zip(s.chars.reverse)
  szip.map(&:min).join
end
p make_smallest_palindrome(s)

def make_smallest_palindrome(s)
  s.chars.zip(s.chars.reverse).map(&:min).join
end
p make_smallest_palindrome(s)
