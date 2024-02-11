# @param {String} s
# @return {Integer}
def count_substrings(s)
  length = s.size
  count = 0

  (0...length).each do |i|
    [[i, i], [i, i + 1]].each do |(left, right)|
      while left >= 0 && right < length && s[left] == s[right]
        left -= 1
        right += 1
      end
      count += (right - left) / 2
    end
  end
  return count
end