# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums=[1,2,3,1])
    #nums.any?{ |num| num}
end

nums=[1,2,3,1]
p nums.any?{|n| nums.count(n) > 1}
p nums.count(1)


# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.uniq.count != nums.count
end

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    !!nums.uniq!
end

def contains_duplicate(nums)
    nums == nums.uniq ? false : true
end