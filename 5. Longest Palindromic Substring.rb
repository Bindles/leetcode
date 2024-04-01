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

#* MANACHERS | FASTEST . . . . . . . .
#* SOL | MANACHERS | 99% SPEED | O(n)
def longest_palindromic_substring(s)
  modified_s = '#' + s.chars.join('#') + '#'
  n = modified_s.length
  palindrome_lengths = Array.new(n, 0)
  center = right = 0

  (0...n).each do |i|
    mirror = 2 * center - i
    if i < right
      palindrome_lengths[i] = [right - i, palindrome_lengths[mirror]].min
    end
    while (i - palindrome_lengths[i] - 1 >= 0 &&
           i + palindrome_lengths[i] + 1 < n &&
           modified_s[i - palindrome_lengths[i] - 1] == modified_s[i + palindrome_lengths[i] + 1])
      palindrome_lengths[i] += 1
    end
    if i + palindrome_lengths[i] > right
      center, right = i, i + palindrome_lengths[i]
    end
  end

  max_length = palindrome_lengths.max
  max_index = palindrome_lengths.index(max_length)
  start_index = (max_index - max_length) / 2
  s[start_index, max_length]
end

puts longest_palindromic_substring("babad")
puts longest_palindromic_substring("cbbd")

#* SOL MANACHER | COMMENTS
def longest_palindromic_substring(s)
  # Preprocess the string with special characters
  modified_s = '#' + s.chars.join('#') + '#'
  n = modified_s.length

  # Initialize the array to store the lengths of palindromes centered at each index
  palindrome_lengths = Array.new(n, 0)

  # Center and right edge of the rightmost palindrome found so far
  center = right = 0

  # Iterate through the modified string to find the palindrome lengths
  (0...n).each do |i|
    # Mirror index
    mirror = 2 * center - i

    # Check if i is within the right edge of the current palindrome
    if i < right
      palindrome_lengths[i] = [right - i, palindrome_lengths[mirror]].min
    end

    # Attempt to expand palindrome centered at i
    while (i - palindrome_lengths[i] - 1 >= 0 &&
           i + palindrome_lengths[i] + 1 < n &&
           modified_s[i - palindrome_lengths[i] - 1] == modified_s[i + palindrome_lengths[i] + 1])
      palindrome_lengths[i] += 1
    end

    # Update center and right edge if a larger palindrome is found
    if i + palindrome_lengths[i] > right
      center, right = i, i + palindrome_lengths[i]
    end
  end

  # Find the longest palindrome and its center
  max_length = palindrome_lengths.max
  max_index = palindrome_lengths.index(max_length)

  # Extract the longest palindrome substring
  start_index = (max_index - max_length) / 2
  s[start_index, max_length]
end

# Example usage
puts longest_palindromic_substring("babad")  # Output: "bab" or "aba"
puts longest_palindromic_substring("cbbd")   # Output: "bb"

#* SOL MANACHER | PUTS
def longest_palindromic_substring(s)
  modified_s = '#' + s.chars.join('#') + '#'
  n = modified_s.length
  palindrome_lengths = Array.new(n, 0)
  center = right = 0

  (0...n).each do |i|
    p "i: #{i}, center: #{center}, right: #{right}, palindrome_lengths: #{palindrome_lengths}"
    mirror = 2 * center - i
    if i < right
      palindrome_lengths[i] = [right - i, palindrome_lengths[mirror]].min
    end
    while (i - palindrome_lengths[i] - 1 >= 0 &&
           i + palindrome_lengths[i] + 1 < n &&
           modified_s[i - palindrome_lengths[i] - 1] == modified_s[i + palindrome_lengths[i] + 1])
      palindrome_lengths[i] += 1
    end
    if i + palindrome_lengths[i] > right
      center, right = i, i + palindrome_lengths[i]
    end
  end

  max_length = palindrome_lengths.max
  max_index = palindrome_lengths.index(max_length)
  start_index = (max_index - max_length) / 2
  s[start_index, max_length]
end

p longest_palindromic_substring("babad")
p longest_palindromic_substring("cbbd")
#* . . . . . . . . . . . . . . . . . . . .

