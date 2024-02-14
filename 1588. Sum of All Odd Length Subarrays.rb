# @param {Integer[]} arr
# @return {Integer}

#MY SOL | SIMPLE
def sum_odd_length_subarrays(arr)
  n = arr.length
  total_sum = 0
  # Iterate through all possible subarrays
  (0...n).each do |i|
      (i...n).step(2).each do |j|  # Increment by 2 to maintain odd length
          total_sum += arr[i..j].sum  # Calculate the sum of the subarray
      end
  end
  total_sum
end

#MY SOL | PUTS
def sum_odd_length_subarrays(arr)
  n = arr.length
  total_sum = 0
  # Iterate through all possible subarrays
  (0...n).each do |i|
      (i...n).step(2).each do |j|  # Increment by 2 to maintain odd length
          subarray = arr[i..j]
          subarray_sum = subarray.sum
          puts "Current subarray: #{subarray}, sum: #{subarray_sum} | i: #{i} j: #{j} | #{i...j}"
          total_sum += subarray_sum  # Calculate the sum of the subarray
          puts "Current total sum: #{total_sum}"
      end
  end
  total_sum
end
p sum_odd_length_subarrays([1, 4, 2, 5, 3])  # Output: 58


#MY SOL | EACH_CONS (FIRST USE)
def sum_odd_length_subarrays(arr)
  total_sum = 0
  (1..arr.length).step(2) do |length|
    arr.each_cons(length) do |subarray|
      total_sum += subarray.sum
    end
  end
  total_sum
end

#MY SOL | EACH_CONS | PUTS
def sum_odd_length_subarrays(arr)
  total_sum = 0
  (1..arr.length).step(2) do |length|
    p "Current length: #{length}"
    arr.each_cons(length) do |subarray|
      p "Current subarray: #{subarray}"
      total_sum += subarray.sum
      p "Current total_sum: #{total_sum}"
    end
  end
  total_sum
end




# Test the function
arr1 = [1,4,2,5,3]
puts "Input array: #{arr1}"
puts "Result: #{sum_odd_length_subarrays(arr1)}"  # Output: 58

# arr2 = [1,2]
# puts "Input array: #{arr2}"
# puts "Result: #{sum_odd_length_subarrays(arr2)}"  # Output: 3

# arr3 = [10,11,12]
# puts "Input array: #{arr3}"
# puts "Result: #{sum_odd_length_subarrays(arr3)}"  # Output: 66

# arr = [1,4,2,5,3]
# p sum_odd_length_subarrays(arr)

(1...5).step(2) do |num|
  puts num
end
(2..6).step(2) do |num|
  puts num
end

inclusive_range = 0..3
exclusive_range = 0...3

puts inclusive_range.to_a.inspect  # Output: [0, 1, 2, 3]
puts exclusive_range.to_a.inspect  # Output: [0, 1, 2]

# Using each_cons to iterate over consecutive pairs of elements in an array:
array = [1, 2, 3, 4, 5]

array.each_cons(2) do |pair|
  puts pair.inspect
end
# Output:
# [1, 2]
# [2, 3]
# [3, 4]
# [4, 5]

# In this example, each_cons(2) iterates over consecutive pairs of elements in the array [1, 2, 3, 4, 5]. It yields each pair to the block, where you can perform operations on the pairs.

# Using each_cons to iterate over consecutive triplets of elements in an array:
array = [10, 20, 30, 40, 50, 60]

array.each_cons(3) do |triplet|
  puts triplet.inspect
end
# Output:
# [10, 20, 30]
# [20, 30, 40]
# [30, 40, 50]
# [40, 50, 60]

# In this example, each_cons(3) iterates over consecutive triplets of elements in the array [10, 20, 30, 40, 50, 60]. It yields each triplet to the block, where you can perform operations on the triplets.