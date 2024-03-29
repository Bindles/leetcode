#* 219. Contains Duplicate II
nums = [1,2,3,1]; k = 3
# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
#* MY SOL
def contains_nearby_duplicate(nums, k)
  hash = {}
  nums.each.with_index do |num, index|
      return true if hash[num] && (hash[num] - index).abs <= k
      hash[num] = index
  end
  false
end

#* WORKING. . . 
def contains_nearby_duplicate(nums, k)
  p nums.select{|num| nums.count(num) > 1}
  p nums.each_with_index.select {|num, index| index if nums.count(num) > 1}.map(&:last)
  p nums.filter_map { |num| nums.index(num) if nums.count(num) > 1 }
  p nums.each_with_index.filter_map { |num, index| index if nums.count(num)}
  #p nums.each_with_index.filter_map { |num, index| index if nums.count(num) > 1 && nums.index(num) == index }
  #p nums.each_with_index.select{|num, index| index if nums.count(num) > 1}
end
p contains_nearby_duplicate(nums, k)

def contains_nearby_duplicate(nums, k)
  p xx = nums.each_with_index.select {|num, index| index if nums.count(num) > 1}.map(&:last)
  p (xx[0] - xx[1]).abs
end
p contains_nearby_duplicate(nums, k)
def contains_nearby_duplicate(nums, k)
  res = nums.each_with_index.select {|num, index| index if nums.count(num) > 1}.map(&:last)
  return true if (res[0] - res[1]).abs <= k || false
end
p contains_nearby_duplicate(nums, k)


