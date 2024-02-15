# @param {Integer[]} nums
# @return {Boolean}

#MY SOL 2
def can_jump(nums)
  max = 0
  i = 0
  while i <= max
      max = [max, i+nums[i]].max
      i += 1
      return true if max >= nums.length - 1
  end
  false
end

#MY SOL 2 | PUTS
def can_jump(nums = [2,0,2,1,1,])
  max = 0
  len = nums.length - 1
  i = 0
  while i <= max
    p "(#{i}) #{nums[i]}"
      max = [max, i+nums[i]].max
      p "(#{i}) #{max}"
      p "jumping by", max
      i += 1
      return true if max >= len
  end
  false
end
p can_jump

#MY SOL 3
def can_jump(nums)
  jump = 0
  nums.each_with_index do |n, i|
      return false if i > jump
      jump = [(n + i), jump].max
  end
  jump >= nums.length - 1
end

#**WRONG
#MY SOL 1 | DID WRONG
def can_jump(nums = [2,3,1,1,4])
  i=0
  p nums.length
  while i < nums.length 
    p "(#{i}) #{nums[i]}"
    return false if nums[i] == 0 
    return true if i == nums.length-1
    p "jumping by", nums[i]
    i += nums[i]
  end
  return false
end

#**SOMEONE ELSES:
#GOALIE
def can_jump(nums)
  goal = nums.length - 1

  i = nums.length-1
  while i >= 0
    if i + nums[i] >= goal
      goal = i
    end
    i -= 1
  end
  goal == 0 ? true : false
end