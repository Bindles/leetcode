# @param {Integer[]} nums
# @return {Integer[]}
#*SOL 1
def majority_element(nums)
    nums.tally.select{|_key, val| val > nums.length / 3 }.keys.uniq
end
p majority_element

#SOL 2
def majority_element(nums)
    n = nums.length
    return [] if n == 0
    counts = nums.group_by(&:itself).transform_values(&:size)
    threshold = n / 3
    counts.select { |_, count| count > threshold }.keys   
end

#TIMEOUT
def majority_element(nums = [3,2,3])
    nums.select{|n| nums.count(n) > nums.length/3}.uniq
end