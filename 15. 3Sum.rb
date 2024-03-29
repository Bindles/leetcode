#* 15. 3Sum
nums = [-1,0,1,2,-1,-4]
# @param {Integer[]} nums
# @return {Integer[][]}
#* MY SOL 2P
def three_sum(nums)
  nums.sort!
  result = []
  
  (0...nums.length-2).each do |i|
    next if i > 0 && nums[i] == nums[i-1] 
    
    left = i + 1
    right = nums.length - 1
    
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      
      if sum.zero?
        result << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1
        
        left += 1 while left < right && nums[left] == nums[left-1] 
        right -= 1 while left < right && nums[right] == nums[right+1]
      elsif sum < 0
        left += 1
      else
        right -= 1
      end
    end
  end
  result
end
p three_sum(nums)

#* ANOTHER GUY SOL
# @param {Integer[]} nums
# @return {Integer[][]}
# theoretical best of O(n2) since twosum is O(n) and we need O(n) passes
# since nlogn is shorter, we can sort the input to more easily work with it
def three_sum(nums)
    nums = nums.sort
    results = []

    nums.each_with_index do |num, index|
        break if num > 0
        next if index > 0 && num == nums[index - 1]
        results += two_sum(nums, num, index)
    end

    results
end

def two_sum(nums, target, left)
    left = left + 1
    right = nums.length - 1
    results = []

    while left < right
        sum = nums[left] + nums[right] + target

        if sum < 0
            left += 1
        elsif sum > 0
            right -= 1
        else # == 0
            results << [target, nums[left], nums[right]]
            left += 1
            right -= 1
            
            while left < right && nums[left] == nums[left - 1] do
                left += 1
            end
        end
    end

    results
end