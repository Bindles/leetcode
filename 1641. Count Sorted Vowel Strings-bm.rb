require 'benchmark'

# Solution 1: Recursive
def count_sorted_vowel_strings_recursive(n)
  vowels = ['a', 'e', 'i', 'o', 'u']
  count = [0]
  generate_vowel_combinations(n, vowels, '', 0, count)
  count[0]
end

def generate_vowel_combinations(n, vowels, current_combination, index, count)
  if current_combination.length == n
    count[0] += 1
  else
    (index...vowels.length).each do |i|
      generate_vowel_combinations(n, vowels, current_combination + vowels[i], i, count)
    end
  end
end

# Solution 2: Iterative without recursion
def count_sorted_vowel_strings_iterative(n)
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

# Solution 3: Iterative DP
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

def count_sorted_vowel_strings_dp_optimized(n)
    return 0 if n == 0
    
    prev_row = (1..5).to_a
    curr_row = Array.new(5, 0)
    
    (2..n).each do
      curr_row[0] = prev_row.sum
      (1..4).each { |j| curr_row[j] = curr_row[j - 1] - prev_row[j - 1] }
      prev_row = curr_row.dup
    end
    
    curr_row.sum
end
  

# Timing and Space Measurement
n = 5

time_recursive = Benchmark.realtime do
  count_sorted_vowel_strings_recursive(n)
end

time_iterative = Benchmark.realtime do
  count_sorted_vowel_strings_iterative(n)
end

time_dp = Benchmark.realtime do
  count_sorted_vowel_strings_dp(n)
end
time_dpo = Benchmark.realtime do
    count_sorted_vowel_strings_dp_optimized(n)
end

puts "Recursive solution time: #{time_recursive}"
puts "Iterative solution time: #{time_iterative}"
puts "DP solution time: #{time_dp}"
puts "DP solution time optim: #{time_dpo}"

puts "Space complexity of recursive solution: Unknown (depends on call stack)"
puts "Space complexity of iterative solution: O(n)"
puts "Space complexity of DP solution: O(n)"

