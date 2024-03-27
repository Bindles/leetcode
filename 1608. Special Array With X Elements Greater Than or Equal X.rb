#* 1608. Special Array With X Elements Greater Than or Equal X
nums = [3,5]
# @param {Integer[]} nums
# @return {Integer}
#*MY SOL
def special_array(nums)
  i = nums.length
  while i > 0
    return i if i == nums.count{|num| num >= i }
    i-=1
  end
  -1
end
p special_array(nums)

#* MY SOL 1.1| PUTS
def special_array(nums)
  i = nums.length
  p i
  while i > 0
    p i
    p "#{i} #{nums.count{|num| num >= i }}"
    return i if i == nums.count{|num| num >= i }
    i-=1
  end
  -1
end
p special_array(nums)

#* SOL 2 | TRY RUBY BSEARCH METHOD:
def special_array(nums)
  nums.sort!
  (0..nums.size).each do |i|
    return i if (nums.size - nums.bsearch_index { |x| x >= i }) == i
  end
  -1
end
p special_array(nums)


#* WORKING. . .
def special_array(nums)
  nums.count{|num| num >= 3 }
end


#*INTERSTING GUYS SOL
def special_array(nums)
  nums.sort!
  (0..nums.size).each do |i|
    return i if (nums.size - bsearch(nums, i)) == i
  end
  -1
end

def bsearch(nums, target)
  left = 0
  right = nums.size - 1

  while left <= right
    mid = left + (right - left) / 2
    if target > nums[mid]
      left = mid + 1
    else
      right = mid - 1
    end
  end
  left
end