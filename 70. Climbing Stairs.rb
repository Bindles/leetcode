#* 70. Climbing Stairs
n = 8
# @param {Integer} n
# @return {Integer}
#* DP | FASTEST | 0.000020
def climb_stairs(n)
  dp=Array.new(n+1, 0)
  dp[1]=1
  dp[2]=2
  dp[3]=3

  (4..n).each do |i|
    dp[i] = dp[i-1] + dp[i-2]
  end
  dp[n]
end
p climb_stairs(n)

#* MATH | FAST | 0.000024
def climb_stairs(n)
  return n if n <= 3

  a,b = 1,2
  (3..n).each do 
    a,b = b, a+b
  end
  b
end
p climb_stairs(n)




p 'RECURSIVE'

#* RECURSIVE REDUNDANT FROM DP
def climb_stairs(n)
    return n if n <= 3

    dp = Array.new(n+1, 0)
    dp[1] = 1
    dp[2] = 2
    dp[3] = 3

    return climb_stairs(n-1) + climb_stairs(n-2)

end
p climb_stairs(n)

#* RECURSIVE 1
def climb_stairs(n)
  return n if n <= 3
  return climb_stairs(n-1) + climb_stairs(n-2)
end
p climb_stairs(n)

#* RECURSIVE 2 | MEMO
def climb_stairs(n, memo = {})
  return n if n <= 3
  return memo[n] if memo[n]

  memo[n] = climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo)
  return memo[n]
end
p climb_stairs(n)

#* MEMO CONCISE
def climb_stairs(n, memo = {})
  return n if n <= 3
  memo[n] ||= climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo)
end
p climb_stairs(n)

#* MEMO CONCISE
def climb_stairs(n, memo = { 1 => 1, 2 => 2, 3 => 3 })
  memo[n] ||= climb_stairs(n - 1, memo) + climb_stairs(n - 2, memo)
end
p climb_stairs(n)

#* MEMO SUPER CONCISE SAME NAME
def climb_stairs(n)
  climb_stairs = { 1 => 1, 2 => 2, 3 => 3 }
  climb_stairs[n] ||= climb_stairs(n-1) + climb_stairs(n - 2)
end
p climb_stairs(n)



