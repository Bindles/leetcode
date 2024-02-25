# @param {Integer} target
# @param {Integer[]} nums
# @return {Integer}
#* SOL 1 | SLIDING WINDOW CONCISE
def min_sub_array_len(target, nums)
  curr = 0
  left = 0
  ans = nums.length + 1
  (0..(nums.length-1)).each do |right|
     curr += nums[right]
     while curr >= target
       ans = [ans, right-left+1].min
       curr -= nums[left]
       left += 1
     end
  end 
  return 0 if ans == nums.length+1
  return ans
end
p min_sub_array_len(7, [2,3,1,2,4,3])
#* SOL 2
def min_sub_array_len(target, nums)
  prefix_sums = [0]
  result = Float::INFINITY
  nums.each { |num| prefix_sums << prefix_sums[-1] + num }
  
  nums.each_index do |left|
    right = prefix_sums.bsearch_index { |p_sum| p_sum - prefix_sums[left] >= target }
    result = [right - left, result].min if right
  end
  result == Float::INFINITY ? 0 : result
end

#WORKING... FAIL
def min_sub_array_len(nums=[1,2,3,4,5])
  return false if nums.empty?

  sum = 0
  left = 0

  nums.each_with_index do |num, right|
    sum += num

    # Shrink the window from the left until the sum is less than or equal to 7
    while sum > 11 && left <= right
      sum -= nums[left]
      left += 1
    end

    return true if sum == 11
  end

  false
end
#p min_sub_array_len