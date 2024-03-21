# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
#* SOL 1
def create_target_array(nums = [0,1,2,3,4], index = [0,1,2,2,1])
  res=[]
  nums.each_index do |i|
    p "#{nums[i]} at ind: #{index[i]}"
    p res.insert(index[i], nums[i])
  end
  p res
end
p create_target_array

#* SOL 1 | NO PUTS
def create_target_array(nums = [0,1,2,3,4], index = [0,1,2,2,1])
  res=[]
  nums.each_index do |i|
    res.insert(index[i], nums[i])
  end
  p res
end
p create_target_array
p '-'

#* TRYING IN PLACE | WORKS | FASTER | 75%/100% | ABOVE WAS 10-50% SPD
def create_target_array(nums = [0,1,2,3,4], index = [0,1,2,2,1])
  index.each_with_index do |target_index, i|
    nums.insert(target_index, nums.delete_at(i))
  end
  nums
end
p create_target_array

#* MAP
def create_target_array(nums = [0,1,2,3,4], index = [0,1,2,2,1])
  res=[]
  nums.map.with_index do |i|
    p res.insert(index[i], nums[i])
  end
  res
end
p create_target_array




# Output: [0,4,1,3,2]
# Explanation:
# nums       index     target
# 0            0        [0]
# 1            1        [0,1]
# 2            2        [0,1,2]
# 3            2        [0,1,3,2]
# 4            1        [0,4,1,3,2]

a = [0,1]
a[2] = 2
a[3] = 3

p a


a = [0,1]
a[2] = 2
a[3] = 3
a.insert(2, 99) #< insert this but push all current to right

p a


zz = 345
p zz
p zz.digits.length.even?