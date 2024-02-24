# @param {Integer[]} nums
# @return {Integer}

#1#####################
def minimum_operations(nums)
  nums.uniq.select{|i| i > 0}.count
end
#IS EQUAL TO
def minimum_operations(nums)
  nums.uniq.filter { _1 > 0 }.count
end

#1 | LONGFORM
def minimum_operations(nums)
  # Remove duplicate elements
  unique_nums = nums.uniq

  # Filter out non-positive values
  positive_nums = unique_nums.select { |num| num > 0 }

  # Count the number of remaining positive values
  count_of_positive_nums = positive_nums.count

  # Output intermediate results for clarity
  puts "Unique elements after removing duplicates: #{unique_nums}"
  puts "Positive numbers after filtering non-positive values: #{positive_nums}"
  puts "Number of positive numbers remaining: #{count_of_positive_nums}"

  # Return the count, representing the minimum number of operations needed
  count_of_positive_nums
end
##############

#2 SET
def minimum_operations(nums)
  p s = nums.to_set
  p s.delete(0)
  p s.count
end

#2 SET | CONCISE
def minimum_operations(nums)
  p nums.to_set.delete(0).count
end


#3
def minimum_operations(nums)
  nums_set = nums.filter{|x| x > 0}.to_set
  nums_set.length
end


#RUN
nums = [1, 2, 3, 5]
result = minimum_operations(nums)
puts "Minimum operations needed: #{result}"


#COUNT <== LEARN
p nums.count(&:even?), nums.count(&:odd?)
p nums.count{ |n| n.even? }, nums.count{ |n| n.odd? }
