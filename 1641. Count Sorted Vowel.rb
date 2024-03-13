#* 1641. Count Sorted Vowel Strings
n = 2
# @param {Integer} n
# @return {Integer}
# @param {Integer} n
# @return {Integer}
#* ONELINER [p]
def count_vowel_strings(n) 
  (1..n+1).map{|i| (1..i).map{|j| ((j)*(j+1))/2}.sum}.sum
end

#*EASIEST TO HARDEST [x]
#* Solution 2: Iterative without recursion
def count_vowel_strings(n)
  vowels = ['a', 'e', 'i', 'o', 'u']
  count = 0
  stack = [[0, '']]
  
  until stack.empty?
    index, current = stack.pop
    if current.length == n
      count += 1
    else
      (index...vowels.length).each do |i|
        stack.push([i, current + vowels[i]])
      end
    end
  end
  count
end

#* SOL 2.5 Iterative, stack-based, DFS [x]
def count_vowel_strings(n)
  count = 0
  stack = [[0, 0]] # Use index directly rather than character

  until stack.empty?
    index, length = stack.pop
    if length == n
      count += 1
    else
      (index...5).each do |i| # Iterate over indices directly
        stack.push([i, length + 1])
      end
    end
  end
  count
end

#* BEST BEST
#* SOL 3: Iterative DP [FAST!!] [p]
def count_vowel_strings(n)
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
p count_vowel_strings(n)

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

#* DEC BUT MUCH WORSE THEN ABOVE
#* RECURSIVE
def count_vowel_strings(n)
  def count_strings(i, j, memo)
    return 1 if i == 1

    return memo[i][j] if memo[i][j] != -1
    
    count = 0
    (j..4).each do |vowel_index|
      count += count_strings(i - 1, vowel_index, memo)
    end
    
    memo[i][j] = count
    count
  end
  
  memo = Array.new(n + 1) { Array.new(5, -1) }
  count = 0
  
  (0..4).each do |vowel_index|
    count += count_strings(n, vowel_index, memo)
  end
  count
end




