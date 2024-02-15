def rotate(nums, k)
  p nums
  k.times do
    p nums.unshift(nums.pop) #or use: nums.prepend(nums.pop)
  end
end

def rotate(nums, k)
  nums.rotate!(nums.length - k)
end

def rotate(nums, k)
  nums.rotate!(-k)
end

nums = [1,2,3,4,5,6,7]
k = 3
p rotate(nums, k)





