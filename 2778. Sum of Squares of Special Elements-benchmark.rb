require 'benchmark'

# Define the first implementation of sum_of_squares
def sum_of_squares_1(nums)
  n = nums.size;nums.map.with_index { |num, i| num**2 if (n % (i + 1)) == 0 }.compact.sum
end

# Define the second implementation of sum_of_squares
def sum_of_squares_2(nums)
  n = nums.size;nums.zip(1..).sum { |num, i| n % i == 0 ? num * num : 0 }
end

# Generate an array with random numbers
nums = Array.new(990) { rand(20..450) }

# Benchmark the first implementation
time_1 = Benchmark.realtime do
  sum_of_squares_1(nums)
end
puts "First implementation took #{time_1} seconds"

# Benchmark the second implementation
time_2 = Benchmark.realtime do
  sum_of_squares_2(nums)
end
puts "Second implementation took #{time_2} seconds"
