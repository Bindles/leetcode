def maximum_strength(nums, k)
  n = nums.length
  prefix_sum = [0] * (n + 1)

  # Calculate the prefix sum
  (1..n).each { |i| prefix_sum[i] = prefix_sum[i - 1] + nums[i - 1] }

  # dp[i][j]: maximum strength obtained by selecting j disjoint subarrays from the first i elements
  dp = Array.new(n + 1) { Array.new(k + 1, 0) }

  (1..n).each do |i|
    (1..k).each do |j|
      # Initialize dp[i][j] with the maximum strength obtained till the (i-1)-th element and j subarrays
      dp[i][j] = dp[i - 1][j]

      # Try different values of x (length of the last subarray)
      (1..i).each do |x|
        next if i - x * 2 + 1 < 0
        break if j == 1 && i - x * 2 + 1 > 0

        # Update dp[i][j] with the maximum strength obtained by selecting x elements from the last subarray
        dp[i][j] = [dp[i][j], dp[i - x * 2 + 1][j - 1] + (prefix_sum[i] - prefix_sum[i - x * 2 + 1]) * x].max
      end
    end
  end

  dp[n][k]
end

# Example usage:
nums1 = [1, 2, 3, -1, 2]
k1 = 3
puts maximum_strength(nums1, k1) # Output: 22

nums2 = [12, -2, -2, -2, -2]
k2 = 5
puts maximum_strength(nums2, k2) # Output: 64


