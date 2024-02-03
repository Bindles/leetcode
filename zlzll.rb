def running_sum(nums = [1, 2, 3, 4])
  # Initialize an empty array to store the running sums
  sums = nums.inject([]) do |sum, num|
    # Print the current value of the sums array
    puts "Current sums array: #{sum.inspect}"

    # Calculate the running sum by adding the last element of the sums array (converted to integer) to the current number
    running_sum = sum.last.to_i + num

    # Print the current running sum
    puts "Running sum: #{running_sum}"

    # Append the running sum to the sums array
    sum << running_sum

    # Print a separator line for clarity
    puts "-" * 20

    # Return the modified sums array for the next iteration
    sum
  end

  # Return the final sums array
  sums
end

# Call the method and print the result
p running_sum


# Step 1: Initial state before iteration starts
sum = []
num = 1
# sum.last => nil
# sum.last.to_i => 0
# sum << (0 + 1) => [1]

# Step 2: After first iteration
sum = [1]
num = 2
# sum.last => 1
# sum.last.to_i => 1
# sum << (1 + 2) => [1, 3]

# Step 3: After second iteration
sum = [1, 3]
num = 3
# sum.last => 3
# sum.last.to_i => 3
# sum << (3 + 3) => [1, 3, 6]

# Step 4: After third iteration
sum = [1, 3, 6]
num = 4
# sum.last => 6
# sum.last.to_i => 6
# sum << (6 + 4) => [1, 3, 6, 10]

# Final result returned by inject: [1, 3, 6, 10]
