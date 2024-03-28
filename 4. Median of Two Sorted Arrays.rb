#* 4. Median of Two Sorted Arrays
nums1 = [1,3];nums2 = [3,4]
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
#*MY SOL
def find_median_sorted_arrays(nums1, nums2)
    nums1.concat(nums2).sort!
    len=nums1.size
    if len.odd?
        return nums1[len / 2]
    else
        return (nums1[len / 2 - 1] + nums1[len / 2]) / 2.0
    end
end
p find_median_sorted_arrays(nums1, nums2)

#*SOL 1.1 | LOOKS LIKE POO
def find_median_sorted_arrays(nums1, nums2)
    nums1.concat(nums2).sort!
    len=nums1.size
    len.odd? ? (return nums1[len / 2]) : (return (nums1[len / 2 - 1] + nums1[len / 2]) / 2.0)
end
p find_median_sorted_arrays(nums1, nums2)





#* NO BUENO. . .
#*DOESNT WORK
def find_median_sorted_arrays(nums1, nums2)
    x = (nums1 + nums2)
    (x.sum / x.length.to_f)
end
p find_median_sorted_arrays(nums1, nums2)