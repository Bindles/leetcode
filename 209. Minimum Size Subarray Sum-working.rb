# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(target = 7, nums = [2,3,1,2,4,3])
    nums.take_while {|a| a < 7}
end
p min_sub_array_len

# Example 1: Using take_while with an array
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Take numbers from the array while they are less than 5
result = numbers.take_while { |num| num + num < 5 }
puts result.inspect  # Output: [1, 2, 3, 4]

# Example 2: Using take_while with a range
range = (1..10)

# Take numbers from the range while they are less than 5
result = range.take_while { |num| num < 5 }
puts result.inspect  # Output: [1, 2, 3, 4]

# Example 3: Using take_while with a custom condition
# Take words from an array until a word with more than 3 characters is encountered
words = ["apple", "banana", "pear", "grape", "kiwi"]

result = words.take_while { |word| word.length <= 4 }
puts result.inspect  # Output: ["apple", "banana", "pear"]

nums = [2,3,1,2,4,3]

p nums.reduce { |acc, num| acc + num if num < 6 }



nums = [2, 3, 1, 2, 4, 3]

result = nums.reduce([]) do |acc, num|
  # Check if adding the current number would exceed 7
  break acc if acc.sum + num >= 7

  # Add the current number to the accumulator
  acc << num
end

puts result.inspect  # Output: [2, 3, 1]

def sum_to_seven?(nums)
  loop do
    # Check if the sum equals 7
    return nums.length if nums.sum == 7

    # Remove the first element from the array
    nums.shift

    # Clear the array if it becomes empty
    nums.clear if nums.empty?
  end
end

nums = [2, 3, 1, 2, 4, 3]
puts sum_to_seven?(nums)  # Output: true


def sum_to_seven?(nums)
  loop do
    # Check if the sum equals 7
    return nums.length if nums.sum == target

    # Remove the first element from the array
    nums.shift

    # Clear the array if it becomes empty
    nums.clear if nums.empty?

    # Break the loop if the array is empty
    break if nums.empty?
  end

  # Return false if sum 7 is not found
  return 0
end

nums = [2, 3, 1, 2, 4, 3]
puts sum_to_seven?(nums)  # Output: true

nums = [1, 2, 3, 4, 5, 6]
puts sum_to_seven?(nums)  # Output: false

def sum_to_seven?(nums=[1,2,3,4,5])
  return false if nums.empty?

  sum = 0
  left = 0

  nums.each_with_index do |num, right|
    sum += num

    # Shrink the window from the left until the sum is less than or equal to 7
    while sum > 11 && left <= right
      sum -= nums[left]
      left += 1
    end

    return true if sum == 11
  end

  false
end
p sum_to_seven?