def max_bottles_drunk(num_bottles, num_exchange)
  total_drunk = num_bottles
  empty_bottles = num_bottles
  
  while empty_bottles >= num_exchange
      exchanged_bottles = empty_bottles / num_exchange
      total_drunk += exchanged_bottles
      empty_bottles = exchanged_bottles + empty_bottles % num_exchange
  end
  
  return total_drunk
end

# Test cases
puts max_bottles_drunk(13, 6) # Output: 15
puts max_bottles_drunk(10, 3) # Output: 13
