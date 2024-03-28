#* 70. Climbing Stairs
n = 58
require 'benchmark'

# Define the implementations
def climb_stairs_math(n)
  return n if n <= 3

  a, b = 1, 2
  (3..n).each do
    a, b = b, a + b
  end
  b
end

def climb_stairs_dp(n)
  dp = Array.new(n + 1, 0)
  dp[1] = 1
  dp[2] = 2
  dp[3] = 3

  (4..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  dp[n]
end

# def climb_stairs_recursive_redundant(n)
#   return n if n <= 3

#   dp = Array.new(n + 1, 0)
#   dp[1] = 1
#   dp[2] = 2
#   dp[3] = 3

#   return climb_stairs_recursive_redundant(n - 1) + climb_stairs_recursive_redundant(n - 2)
# end

def climb_stairs_recursive1(n)
  return n if n <= 3
  return climb_stairs_recursive1(n - 1) + climb_stairs_recursive1(n - 2)
end

def climb_stairs_recursive2_memo(n, memo = {})
  return n if n <= 3
  return memo[n] if memo[n]

  memo[n] = climb_stairs_recursive2_memo(n - 1, memo) + climb_stairs_recursive2_memo(n - 2, memo)
  return memo[n]
end

def climb_stairs_memo_concise(n, memo = {})
  return n if n <= 3
  memo[n] ||= climb_stairs_memo_concise(n - 1, memo) + climb_stairs_memo_concise(n - 2, memo)
end

def climb_stairs_memo_concise_base_cases(n, memo = { 1 => 1, 2 => 2, 3 => 3 })
  memo[n] ||= climb_stairs_memo_concise_base_cases(n - 1, memo) + climb_stairs_memo_concise_base_cases(n - 2, memo)
end

def climb_stairs_memo_super_concise(n)
  climb_stairs_memo_super_concise = { 1 => 1, 2 => 2, 3 => 3 }
  climb_stairs_memo_super_concise[n] ||= climb_stairs_memo_super_concise(n - 1) + climb_stairs_memo_super_concise(n - 2)
end

# Benchmark each implementation
Benchmark.bm(20) do |x|
  x.report("Math: ") { climb_stairs_math(n) }
  x.report("DP: ") { climb_stairs_dp(n) }
  # x.report("Recursive Redundant: ") { climb_stairs_recursive_redundant(n) }
  # x.report("Recursive 1: ") { climb_stairs_recursive1(n) }
  x.report("Recursive 2 Memo: ") { climb_stairs_recursive2_memo(n) }
  x.report("Memo Concise: ") { climb_stairs_memo_concise(n) }
  x.report("Memo Concise Base Cases: ") { climb_stairs_memo_concise_base_cases(n) }
  x.report("Memo Super Concise: ") { climb_stairs_memo_super_concise(n) }
end
