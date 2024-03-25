require 'benchmark'

# Function 1
def number_of_pairs_v1(nums)
  tal = nums.tally
  pairs = tal.values.map{|x| x if x > 1}.compact.map{|x| x.even? ? x : x - 1}.sum / 2
  left = tal.values.select{|x| x.odd?}.size
  [pairs, left]
end

# Function 2
def number_of_pairs_v2(nums)
  tal = nums.tally
  pairs = left = 0

  tal.values.each do |count|
    if count > 1
      pairs += count / 2
      left += count.odd? ? 1 : 0
    else
      left += 1
    end
  end
  [pairs, left]
end

# Generate random array
nums = Array.new(98000) { rand(1..350) }

# Benchmarking
Benchmark.bm(10) do |x|
  x.report("Func 1:") { number_of_pairs_v1(nums) }
  x.report("Func 2:") { number_of_pairs_v2(nums) }
end
