# binary_search.rb

# Load the embedded C extension
require_relative 'binary_search_ext'

# Define a Ruby method that delegates to the embedded C binary search function
def binary_search(arr, target)
  binary_search_c(arr, target)
end

# Usage example
sorted_array = [1, 3, 12, 15, 22, 27, 32]
target = 22
index = binary_search(sorted_array, target)
if index != -1
  puts "The target #{target} is found at index #{index}."
else
  puts "The target #{target} is not found in the array."
end
