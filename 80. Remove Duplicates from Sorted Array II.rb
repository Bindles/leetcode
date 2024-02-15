# @param {Integer[]} nums
# @return {Integer}

#MY SOL
def remove_duplicates(nums = [1,1,1,2,2,3])
  tal = nums.tally
  nums.each.with_index do |num,ind|
    if tal[num] > 2
      nums[ind] = nil
      tal[num]-=1 
    end
  end
  nums.compact!
  nums.length
end

#EXCEED | :(
def remove_duplicates(nums = [1,1,1,2,2,3])
  tal = nums.tally
  p tal
  nums.each.with_index do |num,ind|
    if tal[num] > 2
      nums.delete_at(ind)
      tal[num]-=1 
    end
  end
  p nums
end


#INTERSTING SOLUTIONS
#NOT MINE
def remove_duplicates(nums)
  seen = Hash.new { 0 }
  cursor = nums.length
  while cursor > 0
      index = cursor - 1
      value = nums[index]
      seen[value] += 1
      nums.delete_at(index) if seen[value] > 2
      cursor -= 1
  end
  nums.length
end

 
def remove_duplicates(nums)
  nums_length = nums.length
  total = 0 
  hash = nums.tally
  nums.clear
  hash.each do |key, value|
      count = [2, value].min
      total += count
      count.times { nums.push(key)}
  end
  total
end