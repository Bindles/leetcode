#* 2248. Intersection of Multiple Arrays
nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
  nums.reduce(:&).sort 
end
p intersection(nums)

def intersection(nums)
    n=nums.length
    f=nums.flatten
    f.select { |num| f.count(num) == n }.uniq.sort  
end
p intersection(nums)

