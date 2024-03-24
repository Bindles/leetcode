def maximum_length_substring(s)
  max_length = 0
  char_count = Hash.new(0)
  left = 0

  s.chars.each_with_index do |char, right|
    char_count[char] += 1

    while char_count.values.max > 2
      char_count[s[left]] -= 1
      left += 1
    end

    max_length = [max_length, right - left + 1].max
  end

  max_length
end

# Test cases
puts maximum_length_substring("bcbbbcba") # Output: 4
puts maximum_length_substring("aaaa")     # Output: 2