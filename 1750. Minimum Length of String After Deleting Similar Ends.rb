#*1750. Minimum Length of String After Deleting Similar Ends
# @param {String} s
# @return {Integer}
#*2 POINTER
def minimum_length(s)
  left = 0
  right = s.size - 1
  while left < right && s[left] == s[right] do
      current = s[left]
      left += 1 while left <= right && s[left] == current
      right -= 1 while right >= left && s[right] == current
  end
  right - left + 1
end
p minimum_length

#*2 POINTER V1
def minimum_length(str)
  left = 0
  right = str.size - 1

  while str[left] == str[right] && left < right
    char = str[left]
    left += 1 while str[left] == char
    right -= 1 while str[right] == char
  end

  diff = right - left
  diff.negative? ? 0 : (diff + 1)
end
p minimum_length

#*WORKING | DID WRONG:
def minimum_length(s = "aabccabba")
  p word = s.split("")
    (0..(word.length/2)).each do |i|
      p word
      p word[0] == word[-1]
      word.pop and word.shift if word[0] == word[-1]
      return word.length if word.empty? || word[0] != word[-1]
    end
end
#p minimum_length