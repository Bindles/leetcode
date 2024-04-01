#* 5. Longest Palindromic Substring
s = "babad"
# @param {String} s
# @return {String}
#*MY SOL | FAST
def longest_palindrome(s)
  expand = lambda do |left, right|
    while left >= 0 && right < s.length && s[left] == s[right]
      left -= 1
      right += 1
    end
    s[(left + 1)...right]
  end

  result = ""
  (0...s.length).each do |i|
    sub1 = expand[i, i]
    result = sub1 if sub1.length > result.length
    sub2 = expand[i, i + 1]
    result = sub2 if sub2.length > result.length
  end
  result
end
p longest_palindrome(s)