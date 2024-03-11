#*561. Array Partition
nums = [1,4,3,2]

#*BEST
def array_pair_sum(nums)
  nums.sort.each_slice(2).sum(&:min)
end
p array_pair_sum(nums)

#*GOOD
def array_pair_sum(nums)
  nums.sort.each_slice(2).map(&:first).sum
end
p array_pair_sum(nums)

#*WRITTEN OUT
def array_pair_sum(nums)
  sum = 0
  nums.sort.each_with_index {|num, ind| sum += num if ind.even? } and sum
end
p array_pair_sum(nums)

#* WORKING

def array_pair_sum(nums)
  a= nums.combination(2)
  p a
end
p array_pair_sum(nums)

def array_pair_sum(nums)
sorted_nums = nums.sort
pairs = sorted_nums.each_slice(2).to_a
p pairs
end

def array_pair_sum(nums)
nums.sort!.combination(2).each_slice(2).to_a
end

# Example usage:
nums = [1, 4, 3, 2]
pairs = array_pair_sum(nums)
pairs.each_with_index do |pair, index|
puts "#{index + 1}. #{pair}"
end
