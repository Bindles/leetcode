# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def count_pairs(nums = [-1,1,2,3,1], target = 2)
  p (0...nums.length).to_a
  p (0...nums.length).to_a.combination(2)
  return (0...nums.length).to_a.combination(2).count { |i, j| nums[i] + nums[j] < target }
end
#p count_pairs

def count_pairs(nums = [-1,1,2,3,1], target = 2)
    (0...nums.length).to_a.combination(2).count { |i, j| nums[i] + nums[j] < target }
end
p count_pairs


#TESTING
def count_pairs(nums = [-1,1,2,3,1], target = 2)
  p (0...nums.length).to_a.combination(2).count{ |i| i.sum == target || i.pop == target}
end
count_pairs


arr = ["a","b","c"]

# Generate combinations of different lengths
p (1..arr.length).flat_map { |n| arr.combination(3).to_a }





# arr = ["a", "b", "c","d","e"]

# # Generate permutations of length 2 and concatenate each pair
# pairs = arr.permutation(3).map { |pair| pair.join('+') }

# puts pairs

arr = ["a", "b", "c"]

# Initialize an empty array to store unique pairs
unique_pairs = []

# Generate permutations of length 2 and add unique pairs to the array
arr.permutation(2) do |pair|
  unique_pair = pair.sort.join('+')
  unique_pairs << unique_pair unless unique_pairs.include?(unique_pair)
end

# Print unique pairs
p unique_pairs



# require 'set'

# arr = ["a", "b", "c"]

# # Create a set to store unique pairs
# unique_pairs = Set.new

# # Generate permutations of length 2 and add unique pairs to the set
# arr.permutation(2) do |pair|
#   unique_pairs << pair.sort.join('+')
# end

# # Print unique pairs
# p unique_pairs

# unique_pairs.each {|up| p up}


