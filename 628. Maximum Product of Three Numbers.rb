#* 628. Maximum Product of Three Numbers
nums = [-1,-2,-3]

#* SOL 1
def maximum_product(nums)
    nums.sort!
    return [nums[-1]*nums[-2]*nums[-3], nums[0]*nums[1]*nums[-1]].max
end
p maximum_product(nums)

#* WORKING...
#* SOL 0
def maximumProduct(nums)
    arr=[]
    p nums.sort!
    3.times do 
        arr << nums.pop
    end
    return arr.reduce(:*)
end
p maximumProduct(nums)
        