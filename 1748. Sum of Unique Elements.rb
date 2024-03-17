#* 1748. Sum of Unique Elements
nums = [1,2,3,2]
# @param {Integer[]} nums
# @return {Integer}
#* MY SOLUTIONS****
#* SOL 1
def sum_of_unique(nums)
    nums.map{|num| num if nums.count(num) == 1}.compact.sum
end
p sum_of_unique(nums)

#* SOL 2
def sum_of_unique(nums) # |key(_1),value(_2)|
    nums.tally.reject{_2 > 1 }.keys.sum
end
p sum_of_unique(nums)

#* SOL 3
def sum_of_unique(nums)
    nums.tally.select{|key,val| key if val == 1}.keys.sum
end
p sum_of_unique(nums)
#**********************


