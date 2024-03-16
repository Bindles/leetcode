#* 1403. Minimum Subsequence in Non-Increasing Order
nums = [4,4,7,6,7]
# @param {Integer[]} nums
# @return {Integer[]}
#* SOL 1
def min_subsequence(nums)
  nums.sort!.reverse! 
  sum = nums.sum
  subsequence_sum = 0
  result = []
  
  nums.each do |num|
    subsequence_sum += num
    result << num

    return result if subsequence_sum > sum / 2
  end
end
puts min_subsequence(nums)

#* SOL 1.2 | OPTIMIZED?
def min_subsequence(nums)
  nums.sort_by!{-_1}
  sum = nums.sum
  subsequence_sum = 0
  
  nums.each.with_index do |num, i|
    subsequence_sum += num
    return nums[0, i+1] if subsequence_sum > sum / 2 #OR nums[0..i]
  end
end
puts min_subsequence(nums)

#* Sol 1.1 | Puts | Comments
def min_subsequence(nums)
  nums.sort!.reverse! # Sort the array in non-increasing order
  sum = nums.sum
  subsequence_sum = 0
  result = []
  
  nums.each do |num|
    p subsequence_sum += num
    p result << num
    puts "Subsequence: #{result}, Subsequence Sum: #{subsequence_sum}"

    # If the sum of the subsequence exceeds half of the total sum, return the result
    if subsequence_sum > sum / 2
      puts "Final Result: #{result}"
      return result 
    end
  end
end
puts min_subsequence(nums)  # Output: [10, 9]


#* WORKING ..
#* 1
def min_subsequence(nums)
  sum = nums.sum
  (0...nums.length-1).each do |i|
    p nums[i..i+1], nums[i..i+1].sum
    p "#{(sum - nums[i..i+1].sum) < nums[i..i+1].sum}"
    return nums[i..i+1] if (sum - nums[i..i+1].sum) < nums[i..i+1].sum
  end
end
p min_subsequence(nums)

#* IN LOOP
def min_subsequence(nums)
  inc=1
  sum = nums.sum
  while inc < nums.length-1
    (0...nums.length-inc).each do |i|
      p nums[i..i+inc], nums[i..i+inc].sum
      p "#{(sum - nums[i..i+inc].sum) < nums[i..i+inc].sum}"
      return nums[i..i+inc] if (sum - nums[i..i+inc].sum) < nums[i..i+inc].sum
    end
    inc+=1
  end
end
p min_subsequence(nums)


#* TESTS
p nums.sum
p 34 - 19
p 34 - 19 < 19


