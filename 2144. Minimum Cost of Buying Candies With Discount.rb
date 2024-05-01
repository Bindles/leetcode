#* 2144. Minimum Cost of Buying Candies With Discount
cost = [6,5,7,9,2,2,3,4]
# @param {Integer[]} cost
# @return {Integer}
#*FINALLY | ORIGINAL SOL GOT IT TO WORK
def minimum_cost(cost)
  cost.sort.reverse.each_slice(3).map{|slice|slice[0..1].sum }.sum
end 
#* READABLE AND COOL NEW METHOD FIRST(x) | CAN USE AS A SPLICE FROM 0
p cost.first(4)
def minimum_cost(cost)
  cost.sort
      .reverse
      .each_slice(3)
      .map { |slice| slice.first(2).sum }
      .sum
end
p minimum_cost(cost)

#* FIRST SOL I FINISHED | GOING TO TRY TO GET OG TO WORK
def minimum_cost(cost)
  cost.sort!.reverse!.each_with_index.inject(0) { |sum, (c, i)| i % 3 != 2 ? sum + c : sum }
end

#*
# It sorts the cost array in descending order and then iterates through it in steps of 3, summing up the costs of each group of two highest-priced candies. If the second highest-priced candy doesn't exist, it defaults to 0. Finally, it returns the total sum.
#*
def minimum_cost(cost)
  cost.sort!.reverse! # Descending sort
  sum = 0
  (0...cost.length).step(3) do |i|
    sum += cost[i] + (cost[i + 1] || 0)
  end
  sum
end

# It sorts the cost array in descending order and then iterates through it. For each candy, it adds its cost to total_cost if its index (plus one, since indices start from 0) is not divisible by 3. Finally, it returns the total_cost.
#*
def minimum_cost(cost)
  cost.sort!.reverse! # Descending sort

  total_cost = 0
  cost.each_with_index do |c, index|
    total_cost += c if (index + 1) % 3 != 0
  end

  total_cost
end


#* WORKING . . .
def minimum_cost(cost)
    p cost = cost.sort
    p sum = cost.sum
    p frees = cost.each_slice(3).to_a.map(&:first)
    sum - frees.sum
end
p minimum_cost(cost)

def minimum_cost(cost)
  p sum = cost.sum
  sum - cost.sort!.each_slice(3).to_a.map(&:first).sum
end
p minimum_cost(cost)

def minimum_cost(cost)
  p sum = cost.sum
  p frees = cost.sort!.each_slice(3).to_a.map(&:first)
  sum - frees[0, cost.size / 3].sum
end
p minimum_cost(cost)

# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost.length % 3 == 0 ? cost.sum - cost.sort!.each_slice(3).to_a.map(&:first).sum : cost.sum
end

#* DOESNT WORK EITHER
def min_cost(cost)
  cost.sort!.reverse!
  total = 0
  cost.each_slice(3) do |chunk|
    total += chunk[0] + chunk[1] 
    total += chunk[2] if chunk[2] 
  end
  total
end
#* . . . . . .





