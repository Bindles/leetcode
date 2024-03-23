#* 2248. Intersection of Multiple Arrays
#* LEARN = > REDUCE INTERSECTION REDUCE:& :& INTERSECT ARR & ARR ARR + ARR
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

#* TEST
anarr=[[3,5,6,8,9], [1,2,3,5,7,1], [1,2,3,5,6,6]]
p anarr.reduce(:&) #[3,5]

arr1 = [3,4,7,8]
arr2 = [1,2,7,9,11]
p arr1 & arr2 #[7]
