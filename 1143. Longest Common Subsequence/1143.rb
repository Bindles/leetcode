def longest_common_subsequence(text1 = "abcde", text2 = "ace")
  a=[]
  text1.each_char do |t,index|
    a << t if text2.include?(t)
  end
  p a.join
    
end

longest_common_subsequence


# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1 = "abcde", text2 = "ace")
  m, n = text1.length, text2.length
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  (1..m).each do |i|
    (1..n).each do |j|
      if text1[i - 1] == text2[j - 1]
        dp[i][j] = dp[i - 1][j - 1] + 1
      else
        dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
      end
    end
  end

  dp[m][n]
end

p longest_common_subsequence