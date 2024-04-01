require 'benchmark'

# Define both solutions
def longest_palindrome_subseq_sol1(s)
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

def longest_palindrome_subseq_sol2(s)
  # Ruby code implementation
  n = s.length
  prev = Array.new(n, 0)
  prev[n - 1] = 1
  (n - 2).downto(0) do |i|
    curr = Array.new(n, 0)
    curr[i] = 1
    (i + 1...n).each do |j|
      x = 0
      if s[i] == s[j]
        x = prev[j - 1] + 2
      end
      y = [prev[j], curr[j - 1]].max
      curr[j] = [x, y].max
    end
    prev = curr
  end
  prev[-1]
end

# Generate a random string of length 400
random_string = Array.new(8000) { ('a'..'z').to_a.sample }.join

# Benchmark both solutions
Benchmark.bm do |x|
  x.report("Solution 1:") { longest_palindrome_subseq_sol1(random_string) }
  x.report("Solution 2:") { longest_palindrome_subseq_sol2(random_string) }
end

