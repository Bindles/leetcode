# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
#*MY SOL 1 | FILL
def sort_colors(nums)
  counts = nums.group_by(&:itself).transform_values(&:count)
  nums.fill(0, 0, counts[0] || 0).fill(1, counts[0].to_i, counts[1].to_i).fill(2, counts[0].to_i + counts[1].to_i, counts[2].to_i)
end

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
  c0, c1 = nums.count(0), nums.count(1)  
  nums.fill(0, 0, c0).fill(1, c0, c1).fill(2, c0 + c1)
end

#* WORKING/TESTING
def sort_colors(nums = [2,0,2,1,1,0])
  p nums.group_by{|n| n}.values.flatten.reverse
end
p sort_colors


# Changing values to strings:
hash = { a: 1, b: 2, c: 3 }
transformed_hash = hash.transform_values { |value| value.to_s }
puts transformed_hash.inspect
# Output: {:a=>"1", :b=>"2", :c=>"3"}

# Converting values to uppercase:
hash = { a: 'apple', b: 'banana', c: 'cherry' }
transformed_hash = hash.transform_values { |value| value.upcase }
puts transformed_hash.inspect
# Output: {:a=>"APPLE", :b=>"BANANA", :c=>"CHERRY"}

# Extracting specific data from values:
hash = { a: 'John Smith', b: 'Jane Doe', c: 'Alice Johnson' }
transformed_hash = hash.transform_values { |value| value.split(' ').first }
puts transformed_hash.inspect
# Output: {:a=>"John", :b=>"Jane", :c=>"Alice"}

hash = "rubyiscool".chars.tally
transformed_hash = hash.transform_keys { |k| k.upcase }
puts transformed_hash.inspect