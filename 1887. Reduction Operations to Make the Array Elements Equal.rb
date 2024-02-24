# @param {Integer[]} nums
# @return {Integer}
# def reduction_operations(nums = [5,1,3])
#   class Array
#     def replace(old_value, new_value)
#       index = index(old_value)
#       self[index] = new_value if index
#       self
#     end
#   end

#   nums2 = nums.dup
#     nums.reduce{|a,num| nums.replace()}
# end
# p reduction_operations




class Array
  def replace(old_value, new_value)
    index = index(old_value)
    self[index] = new_value if index
    self
  end
end

nums = [1, 1, 2, 2, 3]
copy_of_nums = nums.dup
copy_of_nums.delete(nums.max)
second_largest = copy_of_nums.max
#copy_of_nums.delete(second_largest)

puts "Second largest number: #{second_largest}" # Output: 2

nums.replace(3,2)
p nums

# copy_of_nums = nums.dup
# # copy_of_nums.delete(nums.max)
# # second_largest = copy_of_nums.max
# #nums.replace(nums.max,copy_of_nums.delete(nums.max))

# #puts "Second largest number: #{second_largest}" # Output: 2

# #nums.replace(3,2)
# p nums
# def reduction_operations(nums = [5,1,3])
#   nums.sort.tally.sum(diff = 0) { |num, count| count * (diff += 1) }
# end
def reduction_operations(nums = [5,1,3])
  nums.sort.tally.sum(diff=0){ _2*~-diff+=1 }
end
def reduction_operations(nums = [5,1,3])
  nums.sort.tally.sum(diff=0){|num, count| count*~-diff+=1 }
end


p reduction_operations

count = 2
diff = 0
result = count * ~-diff += 1
puts result # Output: 2 * ~-0 += 1 = 2 * ~-1 += 1 = 2 * 0 + 1 = 1

count = 3
diff = 1
result = count * ~-diff += 1
puts result # Output: 3 * ~-1 += 1 = 3 * 0 + 1 = 1

count = 4
diff = 2
result = count * ~-diff += 1
puts result # Output: 4 * ~-2 += 1 = 4 * 1 + 1 = 5

count = 2
diff = 0
result = count * (~-diff) + 1
puts result # Output: 2 * (~-0) + 1 = 2 * 1 + 1 = 3

count = 3
diff = 1
result = count * (~-diff) + 1
puts result # Output: 3 * (~-1) + 1 = 3 * 0 + 1 = 1

count = 4
diff = 2
result = count * (~-diff) + 1
puts result # Output: 4 * (~-2) + 1 = 4 * 1 + 1 = 5


count = 2
diff = 0
result = count * (~diff - 1) + 1
puts result # Output: 2 * (~0 - 1) + 1 = 2 * (-1) + 1 = -2 + 1 = -1

count = 3
diff = 1
result = count * (~diff - 1) + 1
puts result # Output: 3 * (~1 - 1) + 1 = 3 * (-2) + 1 = -6 + 1 = -5

count = 4
diff = 2
result = count * (~diff - 1) + 1
puts result # Output: 4 * (~2 - 1) + 1 = 4 * (-3) + 1 = -12 + 1 = -11



# Shorthand
count = 2
diff = 0
result = count * ~-diff += 1
puts result # Output: 1

# Equivalent Longhand
count = 2
diff = 0
result = count * (~-diff) + 1
puts result # Output: 3
