# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums = [1,3,4,2,2]) #tally
  nums.tally.find{ _2>1}&.first 
end
p find_duplicate
def find_duplicate(nums = [1,3,4,2,2])
  nums.sort!.find.with_index { _1 == nums[_2 + 1] }  #find.wi
end
p find_duplicate
def find_duplicate(nums = [1,3,4,2,2])
  nums.sort!.each_with_index{|num,i| return num if num == nums[i + 1]} #each.wi
end
p find_duplicate
def find_duplicate(nums = [1,3,4,2,2]) #set
 n = Set[]
 nums.find {|num| !n.add?(num)} 
end
p find_duplicate
def find_duplicate(nums = [1,3,4,2,2]) #set lol
  nums.find.with_object(Set.new) { |num, n| return num unless n.add?(num) }
end
p find_duplicate