#* 16. 3Sum Closest
nums = [-1,2,1,-4]; target = 1
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.each_index do |i|
    (i+2...nums.size).each do |j|
      p nums[i..j]
    end
  end
    
end
p three_sum_closest(nums, target)
p 'asass'

def three_sum_closest(nums, target)
  nums.each_index do |i|
    (i+1...nums.size).each do |j|
      p nums[i..j]
    end
  end
    
end

def three_sum(nums, target)
  min = cur = (target - (nums[0] + nums[1] + nums[2])).abs 
  nums.each_index do |i|
    (i + 1...nums.length).each do |j|
      (j + 1...nums.length).each do |k|
        sum = nums[i] + nums[j] + nums[k]
        puts "Checking #{nums[i]}, #{nums[j]}, #{nums[k]} => Sum: #{sum}"
        p "#{cur} #{(target - sum).abs}"
        cur = (target -sum).abs
        min = [min, cur].min
        p cur
        #min = [i,j,k] and minval = (target-sum).abs if (target-sum).abs < minval
        p min
        p min
        p min
        min
      end
    end
  end
end

# nums = [2, 7, 11, 15]
# target = 30
# p three_sum(nums, target)
p three_sum_closest(nums, target)


def three_sum(nums, target)
  nums.each_index do |i|
    (i + 1...nums.length).each do |j|
      (j + 1...nums.length).each do |k|
        sum = nums[i] + nums[j] + nums[k]
        puts "Checking #{nums[i]}, #{nums[j]}, #{nums[k]} => Sum: #{sum}"
        return [i, j, k] if sum == target
      end
    end
  end
end

nums = [2, 7, 11, 15]
target = 33
p three_sum(nums, target)

def three_sum(nums, target)
  max=[]
  maxval = 99
  nums.each_index do |i|
    (i + 1...nums.length).each do |j|
      (j + 1...nums.length).each do |k|
        sum = nums[i] + nums[j] + nums[k]
        puts "Checking #{nums[i]}, #{nums[j]}, #{nums[k]} => Sum: #{sum}"
        p "#{(target - sum).abs}"
        max = [i,j,k] and maxval = (target-sum).abs if (target-sum).abs < maxval
        p max
        if sum == target
          return [i, j, k]
        else
          max
        end
      end
    end
  end
end

nums = [2, 7, 11, 15]
target = 30
p three_sum(nums, target)

#* WIN TIMEOUT
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  closest_sum = nums[0] + nums[1] + nums[2]
  closest_diff = (target - closest_sum).abs
  
  nums.each_index do |i|
    (i + 1...nums.length).each do |j|
      (j + 1...nums.length).each do |k|
        sum = nums[i] + nums[j] + nums[k]
        diff_cur = (target - sum).abs
        if diff_cur < closest_diff
          closest_sum = sum
          closest_diff = diff_cur
        end
      end
    end
  end
  closest_sum
end




# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  max_diff = Float::INFINITY
  result = 0
  nums.sort!
  
  (0...nums.size-2).each do |i|
    left = i + 1
    right = nums.size-1
    
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      diff = (target - sum).abs
      
      if diff < max_diff
        max_diff = diff
        result = sum
      end
      
      if sum < target
        left += 1
      else
        right -= 1
      end
    end
  end
  result
end
