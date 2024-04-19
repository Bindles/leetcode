#* 746. Min Cost Climbing Stairs
cost = [1,100,1,1,1,100,1,1,100,1]
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  i=0;
  total=0
  while i < cost.size
    total+= cost[i]
    p "#{cost[i+1]} #{cost[i+2]}"
    p jumpto = [cost[i+1], cost[i+2]].min
    if cost[i+2] == jumpto
      i+=2
    else
      i+=1
    end
  end
  total
end
p min_cost_climbing_stairs(cost)

#*
def min_cost_climbing_stairs(cost)
  n = cost.size
  dp = Array.new(n + 1, 0)

  (2..n).each do |i|
    dp[i] = [dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]].min
  end
  dp[n]
end


def min_cost_climbing_stairs(cost)
  n = cost.length
  dp = Array.new(n + 1, 0)

  (2..n).each do |i|
    puts "Calculating minimum cost for step #{i}:"
    puts "Option 1: dp[#{i - 1}] + cost[#{i - 1}] = #{dp[i - 1]} + #{cost[i - 1]} = #{dp[i - 1] + cost[i - 1]}"
    puts "Option 2: dp[#{i - 2}] + cost[#{i - 2}] = #{dp[i - 2]} + #{cost[i - 2]} = #{dp[i - 2] + cost[i - 2]}"
    dp[i] = [dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]].min
    puts "Minimum cost to reach step #{i}: #{dp[i]}"
  end

  puts "Final minimum cost to reach the top of the floor: #{dp[n]}"
  dp[n]
end

# Example 1
cost1 = [10, 15, 20]
puts min_cost_climbing_stairs(cost1) # Output: 15

# Example 2
cost2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
puts min_cost_climbing_stairs(cost2) # Output: 6


# Example 1
cost1 = [10, 15, 20]
puts min_cost_climbing_stairs(cost1) # Output: 15

# Example 2
cost2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
puts min_cost_climbing_stairs(cost2) # Output: 6






#* O

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  i = cost.size - 3

  while i >= 0
    cost[i] += [cost[i + 1], cost[i + 2]].min
    
    i -= 1
  end  

  cost[0] < cost[1] ? cost[0] : cost[1]
end



# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  i = cost.size - 1
  a = b = 0

  while i >= 0
    a, b = cost[i] + [a, b].min, a
    i -= 1
  end  

  [a, b].min
end

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  i = 1
  pp = 0
  p = cost[0]
  while i <= cost.size
      tmp = p
      p = [pp, p].min + (cost[i] || 0)
      pp = tmp
      i+= 1
  end
  p
end


 # @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  x = y = 0

  cost.each do |val|
    z = val + [x, y].min
    x = y
    y = z
  end
  
  [x, y].min
end

# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  n = cost.size
  memo = {0 => cost[0], 1 => cost[1]}
  (2...n).each {|i| memo[i] = cost[i] + [memo[i-1], memo[i-2]].min}
  [memo[n-1], memo[n-2]].min
end
