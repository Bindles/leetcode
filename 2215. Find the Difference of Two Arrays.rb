#* 2215. Find the Difference of Two Arrays
# nums1 = [1,2,3]
# nums2 = [2,4,6]
nums1 = [1,2,3,3]
nums2 = [1,1,2,2]
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
#* OPTIMAL
def find_difference(nums1, nums2)
  [(nums1 - nums2).uniq, (nums2 - nums1).uniq]
end
p find_difference(nums1, nums2)

#* SOL 1 | ORIGINAL
def find_difference(nums1, nums2)
  tal = [nums1.tally, nums2.tally]
  [nums1.reject{|num|tal[1][num]!=nil}.uniq , nums2.reject{|num|tal[0][num]!=nil}.uniq]
end
p find_difference(nums1, nums2)

#* SOL 1.1 | ORIGINAL | PUTS
def find_difference(nums1, nums2)
    p tal = [nums1.tally, nums2.tally]
    p tal[1][2]
    return [nums1.reject{|num| tal[1][num] != nil}, nums2.reject{|num| tal[0][num] != nil}]
end
p find_difference(nums1, nums2)





