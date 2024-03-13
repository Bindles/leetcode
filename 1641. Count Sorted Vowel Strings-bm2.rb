require 'benchmark'

def count_vowel_strings_bottom_up(n)
  res = [1, 1, 1, 1, 1]
  (2..n).each do |num|
    res = [res[0..4].sum, res[1..4].sum, res[2..4].sum, res[3..4].sum, res[4..4].sum]
  end
  res.sum
end

def count_vowel_strings_oneliner(n)
  (1..n+1).map{|i| (1..i).map{|j| ((j)*(j+1))/2}.sum}.sum
end

def count_sorted_vowel_strings_dp(n)
  dp = Array.new(n + 1) { Array.new(6, 0) }
  
  (1..n).each do |i|
    (1..5).each do |j|
      if i == 1
        dp[i][j] = j
      else
        dp[i][j] = dp[i][j - 1] + dp[i - 1][j]
      end
    end
  end
  
  dp[n][5]
end

def count_vm(n)
  (n+4)*(n+3)*(n+2)*(n+1) / 24  
end

n = 1000

Benchmark.bm(20) do |x|
  x.report("Bottom-up:") { count_vowel_strings_bottom_up(n) }
  x.report("Oneliner:") { count_vowel_strings_oneliner(n) }
  x.report("Iterative DP:") { count_sorted_vowel_strings_dp(n) }
  x.report("Math:") { count_vm(n) }
end
