#* 1641. Count Sorted Vowel Strings
n = 4
# @param {Integer} n
# @return {Integer}

#* ITERATIVE DP | COMMENTS
def count_vowel_strings(n)
  dp = Array.new(n + 1) { Array.new(6, 0) }
  p dp
  
  (1..n).each do |i|
    (1..5).each do |j|
      if i == 1
        p 1
        p j
        puts "dp[#{i}][#{j}]"
        puts "#{dp[i]} #{dp[j]}"
        dp[i][j] = j
        puts "dp[#{i}][#{j}] updated to #{dp[i][j]}"
      else
        p 2
        puts "dp[#{i}][#{j}]"
        puts "#{dp[i]} #{dp[j]}"
        dp[i][j] = dp[i][j - 1] + dp[i - 1][j]
        puts "dp[#{i}][#{j}] updated to #{dp[i][j]}"
      end
    end
  end
  p dp
  
  puts "Final DP table:"
  (1..n).each do |i|
    puts dp[i].join(' ')
  end
  
  puts "Count of sorted vowel strings of length #{n} ending with 'u' (index 5): #{dp[n][5]}"
  dp[n][5]
end
p count_vowel_strings(n)






#* ONELINER:

def count_vowel_strings(n)
  (1..n+1).map{|i| (1..i).map{|j| ((j)*(j+1))/2}.sum}.sum
end