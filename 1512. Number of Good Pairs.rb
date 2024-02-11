# @param {Integer[]} nums
# @return {Integer}

#SOL1
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=0
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      res+=1 if j == num && i < index+i+1
    end
  end
  res
end

#SOL1 ARRAY
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  res.size
end

#SOL1 PUTS
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      p "#{j} (#{i}) vs #{num} (#{index+i+1 }) #{j == num} #{i < index+i+1 && j == num}"
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  p res
  res.size
end

#SOL1 FULL PUTS
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=[]
  nums.each.with_index do |j,i|
    #for num in nums[((i+1)..nums.length)] do
    nums[((i+1)..nums.length)].each.with_index do |num,index|
      p "#{j} (#{i}) vs #{num} (#{index+i+1 }) #{j == num} #{i < index+i+1 && j == num}"
      #p "#{i < index+i+1 && j == num}"
      res << [i,index+i+1] if j == num && i < index+i+1
    end
  end
  p res
  p res.size
end

#SOL2 | MAYBE WORSE | EASY READ
def num_identical_pairs(nums = [1,2,3,1,1,3])
  res=0
  (0...nums.size).each do |i|
      (i...nums.size).each do |j|
        p "#{nums[i]} (#{i}) vs #{nums[j]} (#{j}) #{nums[i]==nums[j]} #{i < j && nums[i]==nums[j]}"
          if nums[i]==nums[j] and i<j
              res+=1
          end
      end
  end
  return res
end
p num_identical_pairs
