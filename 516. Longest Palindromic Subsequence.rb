#* 516. Longest Palindromic Subsequence
s = "bbbab"
# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  p sp = s.split('')
  n = s.length
  # Initialize the 2D table with dimensions (n x n) filled with zeros
  dp = Array.new(n) { Array.new(n, 0) }

  (0...sp.size).each do |i|
    (i+1...sp.size).each do |j|
      p sp[i..j]
      p sp[i..j] == sp[i..j].reverse
    end
  end
end
p longest_palindrome_subseq(s)


def longest_palindrome_subseq(s)
  p sp = s.split('')
  n = s.length
  (n - 1).downto(0) do |i|
    (i + 1).upto(n - 1) do |j|
      puts s[i..j]
    end
  end
end
p longest_palindrome_subseq(s)


def longest_palindrome_subseq(s)
  n = s.length
  dp = Array.new(n) { Array.new(n, 0) }

  (n - 1).downto(0) do |i|
    dp[i][i] = 1
    (i + 1).upto(n - 1) do |j|
      if s[i] == s[j]
        dp[i][j] = dp[i + 1][j - 1] + 2
      else
        dp[i][j] = [dp[i + 1][j], dp[i][j - 1]].max
      end
    end
  end

  dp[0][n - 1]
end

# Example usage:
s1 = "bbbab"
s2 = "cbbd"
puts longest_palindrome_subseq(s1)  # Output: 4
puts longest_palindrome_subseq(s2)  # Output: 2


def longest_palindrome_subseq(s)
  max_length = 0
  longest_subseq = ""

  (0...s.size).each do |i|
    (i+1...s.size).each do |j|
      substring = s[i..j]
      if palindrome?(substring) && substring.length > max_length
        max_length = substring.length
        longest_subseq = substring
      end
    end
  end

  longest_subseq
end

def palindrome?(s)
  s == s.reverse
end
p longest_palindrome_subseq(s)

def longest_palindrome_subseq(s)
  n = s.size
  dp = Array.new(n) { Array.new(n, 0) }

  (0...n).each do |i|
    dp[i][i] = 1
  end

  (0...n).each do |i|
    (i+1...n).each do |j|
      if s[i] == s[j]
        dp[i][j] = dp[i + 1][j - 1] + 2
      else
        dp[i][j] = [dp[i + 1][j], dp[i][j - 1]].max
      end
    end
  end

  dp[0][n - 1]
end

# Example usage:
s1 = "bbbab"
s2 = "cbbd"
puts longest_palindrome_subseq(s1)  # Output: 4
puts longest_palindrome_subseq(s2)  # Output: 2


def longest_palindromic_subsequence(s)
  n = s.size
  dp = Array.new(n) { Array.new(n, 0) }
  
  # Fill the dp table diagonally
  (1...n).each do |len|
    (0...(n - len)).each do |i|
      j = i + len
      if s[i] == s[j]
        dp[i][j] = 2 + (len > 1 ? dp[i + 1][j - 1] : 0)
      else
        dp[i][j] = [dp[i + 1][j], dp[i][j - 1]].max
      end
    end
  end
  
  return dp[0][-1]
end

# Test cases
puts longest_palindromic_subsequence("bbbab") # Output: 4
puts longest_palindromic_subsequence("cbbd")  # Output: 2


#* LOOP VARI
def longest_palindromic_subsequence(s)
  n = s.size
  dp = Array.new(n) { Array.new(n, 0) }

  (0...n).each do |len|
    (0...n - len).each do |i|
      j = i + len
      if s[i] == s[j]
        dp[i][j] = 2 + (len > 1 ? dp[i + 1][j - 1] : 0)
      else
        dp[i][j] = [dp[i + 1][j], dp[i][j - 1]].max
      end
    end
  end
  return dp[0][-1]
end

# Test cases
puts longest_palindromic_subsequence("bbbab") # Output: 4
puts longest_palindromic_subsequence("cbbd")  # Output: 2


  # Base case: single characters are palindrome of length 1
  #(0...n).each { |i| dp[i][i] = 1 }