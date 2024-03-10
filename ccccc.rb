def maximum_happiness_sum(happiness, k)
  # Sort the happiness array in descending order
  happiness.sort!.reverse!
  
  # Iterate over the sorted array and decrement the happiness values of unselected children
  for i in 0...k
    happiness[i] -= 1 if happiness[i] > 0
  end
  
  # Sum up the happiness values of the selected children
  return happiness[0...k].sum
end

# Test cases
puts maximum_happiness_sum([1,2,3], 2) # Output: 4
puts maximum_happiness_sum([1,1,1,1], 2) # Output: 1
puts maximum_happiness_sum([2,3,4,5], 1) # Output: 5
