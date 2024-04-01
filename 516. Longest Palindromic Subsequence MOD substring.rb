#* 516. Longest Palindromic Subsequence MOD substring
s = "zabacx"
# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  p sp = s.split('')
  (0...sp.size).each do |i|
    (i+1...sp.size).each do |j|
      p sp[i..j]
    end
  end
end
p longest_palindrome_subseq(s)

def longest_palindromic_substring(s)
  n = s.length
  dp = Array.new(n) { Array.new(n, false) }
  max_length = 1
  start_index = 0

  # All substrings of length 1 are palindromes
  (0..n-1).each do |i|
    dp[i][i] = true
  end

  # Check for substrings of length 2
  (0..n-2).each do |i|
    if s[i] == s[i+1]
      dp[i][i+1] = true
      start_index = i
      max_length = 2
    end
  end

  # Check for substrings of length greater than 2
  (3..n).each do |len|
    (0..n-len).each do |start|
      # Get the ending index of substring from starting index 'start' and length 'len'
      j = start + len - 1

      # Check if substring from 'start' to 'j' is palindrome
      if s[start] == s[j] && dp[start+1][j-1]
        dp[start][j] = true
        if len > max_length
          start_index = start
          max_length = len
        end
      end
    end
  end

  # Return the longest palindromic substring
  s[start_index, max_length]
end
p longest_palindromic_substring(s)

#*
def longest_palindrome(s)
  size = s.length
  dp = Array.new(size) { Array.new(size, false) }
  start = 0
  max_len = 1

  # Initialize for single characters
  size.times { |i| dp[i][i] = true }

  # Check for two-character substrings
  (size - 1).times do |i|
    if s[i] == s[i + 1]
      dp[i][i + 1] = true
      start = i
      max_len = 2
    end
  end

  # Fill the rest of the table
  (2...size).each do |col|
    (0...size - col).each do |row|
      cl = row + col
      if s[row] == s[cl] && dp[row + 1][cl - 1]
        dp[row][cl] = true
        if col + 1 > max_len
          start = row
          max_len = col + 1
        end
      end
    end
  end

  s[start...(start + max_len)]
end
p longest_palindrome("babad") # Output: "bab" or "aba"

#*
# @param {String} s
# @return {String}
def longest_palindrome(s)
  def expand_around_center(s, left, right)
      while left >= 0 && right < s.length && s[left] == s[right]
          left -= 1
          right += 1
      end
      s[left + 1...right]
  end

  longest = ""

  (0...s.length).each do |i|
      odd = expand_around_center(s, i, i)
      even = expand_around_center(s, i, i + 1)

      if odd.length > longest.length
          longest = odd
      end

      if even.length > longest.length
          longest = even
      end
  end

  return longest
end

# Example usage
s = "babad"
result = longest_palindrome(s)
puts "Longest Palindromic Substring: #{result}"