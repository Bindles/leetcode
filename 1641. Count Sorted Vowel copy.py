#PYTHON
#* 1641. Count Sorted Vowel Strings
n = 2
# @param {Integer} n
# @return {Integer}
# @param {Integer} n
# @return {Integer}
#* ONELINER [p]
# def count_vowel_strings(n) 
#   (1..n+1).map{|i| (1..i).map{|j| ((j)*(j+1))/2}.sum}.sum
# end


# #* BEST BEST
# #* SOL 3: Iterative DP [FAST!!] [p]
# def count_vowel_strings(n)
#   dp = Array.new(n + 1) { Array.new(6, 0) }
  
#   (1..n).each do |i|
#     (1..5).each do |j|
#       if i == 1
#         dp[i][j] = j
#       else
#         dp[i][j] = dp[i][j - 1] + dp[i - 1][j]
#       end
#     end
#   end
#   dp[n][5]
# end
# p count_vowel_strings(n)
def count(n):
  dp = [[0] * 6 for _ in range(n + 1)]
  for i in range(1, n+1):
    for j in range(1, 6):
        if i==1:
          dp[i][j] = j
        else:
          dp[i][j] = dp[i][j-1] + dp[i-1][j]
  return dp[n][5]

print(count(n))

def count(n):
    NB_VOWELS = 5
    prev = [1]*NB_VOWELS
    curr = [0]*NB_VOWELS
    for i in range(1, n):
        curr[0] = prev[0] + prev[1] + prev[2] + prev[3] + prev[4]
        curr[1] = prev[1] + prev[2] + prev[3] + prev[4]
        curr[2] = prev[2] + prev[3] + prev[4]
        curr[3] = prev[3] + prev[4]
        curr[4] = prev[4]
        for j in range(NB_VOWELS):
          prev[j] = curr[j]
    return sum(prev)

print(count(n))

