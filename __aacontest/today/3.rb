def min_operations(k)
  operations = 0
  nums = [1]
  
  while nums.reduce(:+) < k
    max_num = nums.max
    if nums.sum { |val| val * 2 } >= k
      nums[nums.index(max_num)] *= 2
      break
    else
      nums.map! { |num| num + 1 }
    end
    operations += 1
  end
  
  operations
end

# Test cases
puts min_operations(11) # Output: 5
puts min_operations(1)  # Output: 0
puts min_operations(2)  # Output: 1
