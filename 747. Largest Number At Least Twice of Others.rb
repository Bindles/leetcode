#* 747. Largest Number At Least Twice of Others
nums = [3,6,1,0]
# @param {Integer[]} nums
# @return {Integer}
#* SOL 1 | FAIL SOME TEST MAKES NO SENSE
def dominant_index(nums)
    nums.sort_by!{|n|-n}
    nums[0] > (nums[1] * 2) ? 1 : -1
end
p dominant_index(nums)

#* SOL 2 | THIS WORKS
def dominant_index(nums)
  max_index = nums.index(nums.max)
  max_value = nums[max_index]
  
  nums.each_with_index do |num, index|
      next if index == max_index
      return -1 if num * 2 > max_value
  end
  max_index
end

#* INTERESTING OTHER PPL SOL
def dominant_index(nums)
  nums.max(2).yield_self { |a, b| a >= 2*b ? nums.index(a) : -1 }
end
p dominant_index(nums)