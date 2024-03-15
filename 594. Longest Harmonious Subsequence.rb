#* 594. Longest Harmonious Subsequence
nums = [1,3,2,2,5,2,3,7]
# @param {Integer[]} nums
# @return {Integer}
#* CONCISE
def find_lhs(nums)
  max_count = 0;hash = nums.tally
  nums.tally.each do |key,val|
      max_count = [max_count, val + hash[key+1]].max if hash[key+1]
  end
  max_count
end
p find_lhs(nums)

#* REG
def find_lhs(nums)
  p hash = nums.tally
  max_count = 0
  nums.tally.each do |key,val|
      high = hash[key+1]
      max_count = [max_count, val + high].max if high
  end
  max_count
end
p find_lhs(nums)

#* PUTS
def find_lhs(nums)
  p hash = nums.tally
  max_count = 0
  nums.tally.each do |key,val|
    p "maxcount: #{max_count} val: #{val} hash[key+1]: #{hash[key+1]}"
      max_count = [max_count, val + hash[key+1]].max if hash[key+1]
  end
  max_count
end
p find_lhs(nums)

#* WORKING...
#* DIDNT QUITE WORK
def find_lhs(nums)
  p nums
  #a = [nums[i], nums[i+1]]
  return 0 if nums.empty?
  (nums.length-1).times do |i|
    p [nums[i], nums[i+1]]
    #p [nums[i], nums[i+1]].max - [nums[i], nums[i+1]].min
    p nums[i] - nums[i+1] == -1 || nums[i] - nums[i+1] == 0 || nums[i] - nums[i+1] == 1
  end
end

#* INTERESTING
#*
def find_lhs(nums)
  hash = nums.tally
  max = 0
  
  hash.each do |num, value|
    next unless n = hash[num + 1]
    p n
    max = [n + value, max].max
  end

  max
end
p find_lhs(nums)

#*
def find_lhs(nums)
  counter = Hash[nums.group_by{|num| num}.map{|num, a| [num, a.count]}]
  counter.map{|num, count|
    counter[num + 1] && counter[num] + counter[num + 1]
  }.compact.max || 0
end

#*
def find_lhs(nums)
  count = nums.tally
  nums = nums.uniq.sort
  dif = 0
  nums.each_with_index do |n, i|
    next if nums[i+1].nil? || nums[i+1] - n > 1
    dif = [dif, count[n] + count[nums[i+1]]].max
  end
  dif
end

#*
def find_lhs(nums)
  # Get each num into a hash with key is number and value is
  # frequency.
  hash = Hash.new
  nums.each do |num|
      if !hash[num]
          hash[num] = 1
      else
          hash[num] += 1
      end
  end
  p hash
  p nums

  # Check each key to see if it has a higher
  # in the hash. Create a local max count and set max count
  # to the max of local max count and max count.

  # Note: The reason we do not check for both higher by one and lower 
  # by one is if we do have a lower key, we will eventually check
  # both situations.
  max_count = 0
  hash.each do |key,val|
      count = 0
      p hash[key+1]
      p high = hash[key+1]
      if high
          max_count = [max_count, val + high].max if hash[key+1]
      end
  end
  max_count
end
p find_lhs(nums)