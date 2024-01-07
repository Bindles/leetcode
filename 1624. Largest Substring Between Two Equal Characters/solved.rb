def max_length_between_equal_characters(s = "xabca")
  charmaphash = {}
  maxLen = -1

  s.each_char.with_index do |char, index|
    if charmaphash.key?(char)
      curLen = index - charmaphash[char] -1
      maxLen = [maxLen, curLen].max
    else
      charmaphash[char] = index
    end
  end
  
  return maxLen
end

max_length_between_equal_characters