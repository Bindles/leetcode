def maximum_strength(nums, k)
  n = nums.length
  max_strength = -1

  (1..n).each do |x|
    (0..(n - x)).each do |i|
      sum = 0
      (0...x).each do |j|
        sum += nums[i + j]
      end

      strength = 0
      (1..x).each do |y|
        strength += ((-1) ** (y + 1)) * sum * (x - y + 1)
        sum -= nums[i + y - 1]
      end

      max_strength = [max_strength, strength].max if (i + x * k) <= n
    end
  end

  max_strength
end

# Test cases
puts maximum_strength([1,2,3,-1,2], 3) # Output: 22
puts maximum_strength([12,-2,-2,-2,-2], 5) # Output: 64
puts maximum_strength([-1,-2,-3], 1) # Output: -1
