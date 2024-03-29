#* 1. Two Sum
nums = [2,7,11,15]; target = 9
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
#* MY SOL
def two_sum(nums, target)
  nums.each_index do |i|
    (i+1...nums.length).each do |j|
      return [i,j] if nums[i] + nums[j] == target
    end
  end
end
p two_sum(nums, target)

#* MY SOL
def two_sum(nums, target)
    nums.each_index do |i|
      (i+1...nums.length).each do |j|
        p "#{nums[i]} #{nums[j]}"
        return [i,j] if nums[i] + nums[j] == target
      end
    end
end
p two_sum(nums, target)

#*
def two_sum(nums, target)
  num_indices = {}

  nums.each_with_index do |num, i|
      compliment = target - num
      # Check if the compliment is already in the map
      if num_indices.key?(compliment)
          return [num_indices[compliment], i]
      end
      # Add the current number and its index to the map
      num_indices[num] = i
  end
end
p two_sum(nums,target)

#*
def two_sum(nums, target)
  nums.each_with_index do |el, i|
      other = nums.slice((i + 1 )..-1).find_index(target - el)
      return [i, other + i + 1] if other # actual index is offset
  end
  return nil
end
p two_sum(nums,target)
