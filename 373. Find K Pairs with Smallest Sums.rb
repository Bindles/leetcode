#* 373. Find K Pairs with Smallest Sums
nums1 = [1,7,11]; nums2 = [2,4,6]; k = 3
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer} k
# @return {Integer[][]}
require 'heap'
#*
def k_smallest_pairs(nums1, nums2, k)
  return [] if nums1.empty? || nums2.empty?

  result = []
  min_heap = nums1.product(nums2).min_by(k) { |pair| pair.sum }
  min_heap.each { |pair| result << pair.first(2) }
  
  result
end
p k_smallest_pairs(nums1, nums2, k)

def k_smallest_pairs(nums1, nums2, k)
  res=[]
  nums1.each_index do |i|
    nums2.each_index do |j|
      res << [nums1[i], nums2[j]]
    end
  end
  res[0...k]
end
p k_smallest_pairs(nums1, nums2, k)