#2913. Subarrays Distinct Element Sum of Squares I
# @param {Integer[]} nums
# @return {Integer}
#*LEARN=> combination
nums = [1, 2, 1]
#*SET SIZE
# Use combination method to generate combinations of size 2
combinations = nums.combination(2).to_a
# Print the combinations
combinations.each { |combo| puts combo.inspect }


#*RANGE
p '@@'
a = (1..nums.length).flat_map do |i|
  nums.combination(i).to_a
end
p a
a.each {|mynum| p mynum.sum}
z = a.flat_map {|mynum| mynum.sum}
p z.sum
p'-'

#SELECT DOESNT WORK
p '--'
x = (1..nums.length).select do |i|
  nums.combination(i).to_a
end
p x


p '!!'
(1..nums.length).each do |i|
  nums.combination(i).each { |combo| p combo }
end

p 'r'
(1..nums.length).each do |i|
  nums.combination(i).each do |combo|
    p combo unless combo.uniq.length != combo.length
  end
end
p '<-'

#*
(1..nums.length).each do |i|

  combinations = nums.combination(i)
  combinations.each { |combo| puts combo.inspect }

end

(1..nums.length).each do |i|

  combinations = nums.combination(i)
  combinations.each { |combo| puts combo.inspect }

end















#*ALL
# Generate combinations of different lengths
(1..nums.length).each do |size|
  combinations = nums.combination(size).to_a
  combinations.each { |combo| puts combo.inspect }
end


def sum_counts(nums = [1,2,1])
    combos = (1..nums.length).flat_map do |i|
      nums.combination(i).to_a
    end.flat_map{|x| x.sum}.sum
    combos
end
p sum_counts
def sum_counts(nums = [1,2,1])
  (1..nums.length).flat_map {|i|nums.combination(i).to_a}.flat_map{|x| x.sum}.sum
end
p sum_counts

def sum_counts(nums = [1,2,1])
  combos = (1..nums.length).flat_map do |i|
    nums.combination(i).to_a
  end
  combos
end
p sum_counts



#*HASH | NC
def sum_counts(nums)
  sum = 0
  nums.each_index do |i|
      distinct_count = Hash.new(0)
      (i...nums.length).each do |j|
          distinct_count[nums[j]] += 1
          sum += distinct_count.keys.length ** 2
      end
  end
  sum
end
nums = [1,2,1]
p sum_counts(nums) # Output: 15

#*HASH|COMMENTS
def sum_counts(nums)
  sum = 0
  # Iterate through all possible subarrays
  nums.each_index do |i|
      distinct_count = Hash.new(0)
      (i...nums.length).each do |j|
          # Calculate the distinct count of each subarray
          distinct_count[nums[j]] += 1
          # Add the square of the distinct count to the sum
          sum += distinct_count.keys.length ** 2
      end
  end
  sum
end
p sum_counts(nums) # Output: 15

#*TALLY | COMMENTS
def sum_counts(nums)
  sum = 0
  
  # Iterate through all possible subarrays
  nums.each_index do |i|
      distinct_count = nums[i..-1].tally
      (i...nums.length).each do |j|
          # Add the square of the distinct count to the sum
          sum += distinct_count.length ** 2
          # Update distinct count for next subarray
          distinct_count[nums[j]] -= 1
          distinct_count.delete(nums[j]) if distinct_count[nums[j]] == 0
      end
  end
  
  sum
end
p sum_counts(nums) # Output: 15
