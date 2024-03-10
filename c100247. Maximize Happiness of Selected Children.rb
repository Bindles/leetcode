def maximum_happiness_sum(happiness, k)
  n = happiness.length
  return happiness.sum if k >= n
  
  happiness.sort!.reverse!
  total_happiness = happiness[0, k].sum
  
  decrement = (1..k-1).sum
  total_happiness - decrement
end

# Test cases
happiness1 = [1,2,3]
k1 = 2
puts maximum_happiness_sum(happiness1, k1)  # Output: 4

happiness2 = [1,1,1,1]
k2 = 2
puts maximum_happiness_sum(happiness2, k2)  # Output: 1

happiness3 = [2,3,4,5]
k3 = 1
puts maximum_happiness_sum(happiness3, k3)  # Output: 5
