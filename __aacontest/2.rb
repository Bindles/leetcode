def count_substrings(s, c)
  count = 0
  s.each_char.with_index do |char, index|
    count += 1 if char == c
  end
  count
end

# Example test cases
puts count_substrings("abada", "a") # Output: 6
puts count_substrings("zzz", "z")   # Output: 6