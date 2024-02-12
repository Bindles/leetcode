# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}

#MY SOLUTION
def count_k_difference(nums, k)
  res=0
  (0...nums.size).each do |i|
      (i+1...nums.size).each do |j|
        res+=1 if (nums[i] - nums[j]).abs == k
      end
  end
  return res
end

#MY SOL | CONCISE
def count_k_difference(nums, k)
  res=0
  (0...nums.size).each do |i|
      (i+1...nums.size).each{ |j|res+=1 if (nums[i] - nums[j]).abs == k}
  end
  return res
end

#MY SOL | READABLE
def count_k_difference(nums, k)
  res=0
  (0...nums.size).each do |i|
      (i+1...nums.size).each do |j|
          if (nums[i] - nums[j]).abs == k
              res+=1
          end
      end
  end
  return res
end

#MY SOL | PUTS
def count_k_difference(nums = [1,2,2,1], k = 1)
  res=0
  (0...nums.size).each do |i|
      (i+1...nums.size).each do |j|
        p "#{nums[i]} (#{i}) vs #{nums[j]} (#{j}) | #{(nums[i] - nums[j]).abs} #{k} #{(nums[i]-nums[j]).abs == k}"
          if (nums[i] - nums[j]).abs == k
              res+=1
          end
      end
  end
  return res
end

count_k_difference