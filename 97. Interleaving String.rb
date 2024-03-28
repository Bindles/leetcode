#* 97. Interleaving String
s1 = "aabcc"; s2 = "dbbca"; s3 = "aadbbcbcac"
# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Boolean}
#*
def is_interleave(s1, s2, s3)
  return false if s1.length + s2.length != s3.length

  dp = Array.new(s1.length + 1) { Array.new(s2.length + 1, false) }
  dp[0][0] = true

  (1..s1.length).each { |i| dp[i][0] = dp[i - 1][0] && s1[i - 1] == s3[i - 1] }
  (1..s2.length).each { |j| dp[0][j] = dp[0][j - 1] && s2[j - 1] == s3[j - 1] }

  (1..s1.length).each do |i|
    (1..s2.length).each do |j|
      dp[i][j] = (dp[i - 1][j] && s1[i - 1] == s3[i + j - 1]) || (dp[i][j - 1] && s2[j - 1] == s3[i + j - 1])
    end
  end
  dp[s1.length][s2.length]
end
p is_interleave(s1, s2, s3)
