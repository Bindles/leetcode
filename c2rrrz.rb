def maximum_happiness_sum(happiness, k)
  n = happiness.length
  sorted_happiness = happiness.sort.reverse
  total_happiness = 0
  
  k.times do |i|
    total_happiness += sorted_happiness[i]
    sorted_happiness[i + 1..-1].each_with_index do |value, j|
      break if value == 0
      sorted_happiness[i + 1 + j] -= 1
    end
  end
  
  total_happiness
end

# Example usage:
puts maximum_happiness_sum([1,2,3], 2)  # Output: 4
puts maximum_happiness_sum([1,1,1,1], 2)  # Output: 1
puts maximum_happiness_sum([2,3,4,5], 1)  # Output: 5
