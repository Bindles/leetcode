def numbers_equal_to_5(nums, x)
  target = []
  steps = 0
  array = nums.combination(2).select { |pair| pair.sum == x }

  nums.each_with_index do |num, index|
    steps += 1
    target << num

    if array.any? { |subarray| subarray.all? { |n| target.include?(n) } }
      return steps
    end
  end

  nil  # Return nil if no combination is found
end

# Test case
p numbers_equal_to_5([3, 2, 20, 1, 1, 3], 10) # Output: 3

def numbers_equal_to_5(nums, x)
  target = []
  steps = 0
  array = []
  nums.each.with_index do |_,index|
    nums.combination(index).select { |pair|array << pair if pair.sum == x }
    p array
  end
  nums.each_with_index do |num, index|
    steps += 1
    target << num

    if array.any? { |subarray| subarray.all? { |n| target.include?(n) } }
      return steps
    end
  end

  nil  # Return nil if no combination is found
end

# Test case
p numbers_equal_to_5([3, 2, 20, 1, 1, 3,9], 10) # Output: 3



