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


# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums = [1,1,4,2,3], x = 5)
  nums.reduce([]) { |acc, num| num == x ? acc << num : acc }
end

p min_operations

def numbers_equal_to_5(nums)
  p nums.reduce([]) { |acc, num| num == 5 ? acc << num : acc }
end

# Test case
p numbers_equal_to_5([1, 1, 4, 2, 3]) # Output: [5]

def numbers_equal_to_5(nums)
  nums.combination(2).find { |pair| pair.sum == 5 }
end

# Test case
p numbers_equal_to_5([7,7,7,1, 1, 4, 2, 3, 7]) # Output: [2, 3]

#ALMOST WORKS SO CLOSE
def numbers_equal_to_5(nums, x)
  target=[]
  stepsarr=[]
  steps=0
  array= nums.combination(2).select { |pair| pair.sum == x }
  p nums
  p array.uniq!
  (nums.length-1).downto(0) do |x| 
    p "checking #{nums.reverse}"
    steps+=1
    #p nums[x]
    target<< nums[x]
     #a.each{ p _1 == (nums[x])}
     p target
     contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
     p contains_subarray, steps
     stepsarr << steps and break if contains_subarray
  end
  target=[]
  steps = 0

  p "right, steps {#{steps}}"
  nums.each do |num| 
    p "checking #{nums}"
    steps+=1
    p num
    target<< num
     #a.each{ p _1 == (nums[x])}
     p target
     contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
     p " #{contains_subarray} steps:  #{steps}"
     stepsarr << steps and break if contains_subarray
  end
  p target
  p stepsarr
  p stepsarr.min
end

# Test case
p numbers_equal_to_5([3,2,20,1,1,3], x = 10) # Output: [[1, 4], [2, 3]]

# nums.each do |num
# end

# end

# # Test case
# p numbers_equal_to_5([1, 1, 4, 2, 3]) # Output: [[1, 4], [2, 3]]

# see if num.each is == [0,1] on each array
# hit0=true
# hit1=true

a = [1,1,4,2,3]
b = [2,3]
p a.to_set.superset?(b.to_set)

# array = [[1, 4], [2, 3]]
# target = [7, 2, 3]

# contains_target = array.any? { |subarray| subarray == target }
# puts contains_target

# array = [[1, 4], [2, 3]]
# target = [7, 2, 3]

# contains_target = array.any? { |subarray| (target - subarray).empty? }
# puts contains_target


# array = [[1, 4], [2, 3]]
# target = [2, 3]

# contains_target = array.include?(target)
# puts contains_target

# array = [[1, 4], [2, 3]]
# target = [7, 2, 3]

# contains_target = array.any? { |subarray| target.all? { |element| subarray.include?(element) } }
# puts contains_target

# array = [[1, 4], [2, 3]]
# target = [7, 2, 3]

# contains_target = array.any? { |subarray| (target - subarray).empty? }
# puts contains_target

array = [[1, 4], [2, 3]]
target = [7, 2, 3]

contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
puts contains_subarray



#ALMOST WORKS SO CLOSE
def numbers_equal_to_5(nums, x)
  target=[]
  stepsarr=[]
  steps=0
  array= nums.combination(2).select { |pair| pair.sum == x }
  p nums
  p array.uniq!
  (nums.length-1).downto(0) do |x| 
    p "checking #{nums.reverse}"
    steps+=1
    #p nums[x]
    target<< nums[x]
     #a.each{ p _1 == (nums[x])}
     p target
     contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
     p contains_subarray, steps
     stepsarr << steps and break if contains_subarray
  end
  target=[]
  steps = 0

  p "right, steps {#{steps}}"
  nums.each do |num| 
    p "checking #{nums}"
    steps+=1
    p num
    target<< num
     #a.each{ p _1 == (nums[x])}
     p target
     contains_subarray = array.any? { |subarray| subarray.all? { |num| target.include?(num) } }
     p " #{contains_subarray} steps:  #{steps}"
     stepsarr << steps and break if contains_subarray
  end
  p target
  p stepsarr
  p stepsarr.min
end

# Test case
p numbers_equal_to_5([3,2,20,1,1,3], x = 10) # Output: [[1, 4], [2, 3]]



#stepsarr.empty? ? -1 : stepsarr.min