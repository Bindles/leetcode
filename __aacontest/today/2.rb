def min_operations(k)
  return 0 if k == 1

  count = 0
  sum = 1

  while sum < k
      sum += sum - 1  # Double the sum and subtract 1 to include the newly added element
      count += 1
  end

  return count + (sum == k ? 0 : 1)  # If the sum is equal to k, no additional operation is needed
end










# Test cases
puts min_operations(11)  # Output: 5
puts min_operations(1)   # Output: 0
puts min_operations(3)
