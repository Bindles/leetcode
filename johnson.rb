# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums = [1,1,2,7,1])
    p nums
    p nums.length
    a = nums.uniq
    b = nums.length - a.length
    p a
    b
    
end

remove_duplicates