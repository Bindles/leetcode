#* 72. Edit Distance
word1 = "horse"; word2 = "ros"
# @param {String} word1
# @param {String} word2
# @return {Integer}
#* MY SOL
def min_distance(word1, word2)
  m, n = word1.length, word2.length
  return n if m == 0
  return m if n == 0

  dp = (0..n).to_a

  (1..m).each do |i|
    prev = dp[0]
    dp[0] = i

    (1..n).each do |j|
      curr = dp[j]
      dp[j] = word1[i - 1] == word2[j - 1] ? prev : [dp[j], dp[j - 1], prev].min + 1
      prev = curr
    end
  end
  dp[n]
end
p min_distance(word1, word2)