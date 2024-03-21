#* 2570. Merge Two 2D Arrays by Summing Values
#* LEARN => NUM GROUPING NUM MERGING MERGE TO_H GROUP_BY COMBINE ARRAY ARRAY MERGING ARRAY TO HASH 
nums1 = [[1,2],[2,3],[4,5]]
nums2 = [[1,4],[3,2],[4,1]]
# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
#* MY SOL | SHOWING STUFF | .sort is the solved
def merge_arrays(nums1, nums2)
  (nums1 + nums2).group_by(&:first).transform_values { |pairs| pairs.map(&:last).sum }
end
p merge_arrays(nums1, nums2)
def merge_arrays(nums1, nums2) #* FINAL
  (nums1 + nums2).group_by(&:first).transform_values { |pairs| pairs.map(&:last).sum }.sort
end
p merge_arrays(nums1, nums2)

#* SOL
def merge_arrays(nums1, nums2)
  nums1.to_h.merge(nums2.to_h){|_,v1,v2| v1 + v2 }
end
p merge_arrays(nums1, nums2) 
def merge_arrays(nums1, nums2) 
  nums1.to_h.merge(nums2.to_h){|_,v1,v2| v1 + v2 }.sort
end
p merge_arrays(nums1, nums2)
#*show blockvar exp
def merge_arrays(nums1, nums2)
  nums1.to_h.merge(nums2.to_h){|_keynum,v1,v2| _keynum + v1 + v2 }
end
p merge_arrays(nums1, nums2) 

#* TEST
p nums1.zip(nums2)

# Merge the arrays based on their first elements and sum the second elements if they have the same first element
p merged_hash = (nums1 + nums2).group_by(&:first).transform_values { |pairs| pairs.map(&:last).sum }




#* INTERESTING SOLS
def merge_arrays(nums1, nums2)
  dict = {}
  dict.default = 0
  p nums = nums1+nums2
  for pair in nums
      dict[pair[0]] += pair[1]
  end
  dict.to_a.sort!{|a,b| a[0]<=>b[0]}
end
p merge_arrays(nums1, nums2)