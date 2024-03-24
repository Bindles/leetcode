#* SLICE > POP MUCH FASTER

def merge(nums1, m, nums2, n)
  nums1.pop(n)
  nums1.concat(nums2)
  nums1.sort!
end

def merge(nums1, m, nums2, n)
  nums1.slice!(m...nums1.length)
  nums1.concat(nums2)
  nums1.sort!
end

# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  p1 = m - 1
  p2 = n - 1
  p = m + n - 1
  
  while p1 >= 0 && p2 >= 0
      if nums1[p1] > nums2[p2]
          nums1[p] = nums1[p1]
          p1 -= 1
      else
          nums1[p] = nums2[p2]
          p2 -= 1
      end
      p -= 1
  end
  nums1[0..p2] = nums2[0..p2] if p2 >= 0
end



