# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
#* SOL 1
def find_intersection_values(nums1 = [4,3,2,3,1], nums2 = [2,2,5,2,3,6])
    [nums1.count {|num| nums2.include?(num)}, nums2.count {|num| nums1.include?(num)}]
end
p find_intersection_values
#* SOL 1.5 | READABLE
def find_intersection_values(nums1, nums2)
  n = nums1.count { |num| nums2.include?(num) }
  m = nums2.count { |num| nums1.include?(num) }
  [n, m]
end

#*WORKING | NOT FINISHED
def find_intersection_values(nums1 = [4,3,2,3,1], nums2 = [2,2,5,2,3,6])
  n = nums1.size
  m = nums2.size
  nums2.select.with_index {|num,i| nums1.include?(num)}
end