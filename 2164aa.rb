def rearrange_array(nums)
  odd, even = nums.partition.with_index { |num, index| index.odd? }.map(&:sort)

  nums.map.with_index { |_, i| i.odd? ? odd.pop : even.shift }
end

# Test cases
p rearrange_array([4,1,2,3])
# Output: [2, 3, 4, 1]

# puts rearrange_array([2,1]).inspect
# # Output: [2, 1]


require 'enumerator'

def rearrange_array(nums)
    odd, even = nums.partition.with_index { |num, index| index.odd? }.map(&:sort)
    odd.sort!.reverse!
    even.sort!

    zip_list = even.zip(odd).map(&:compact)
    zip_list.flatten
    #out = zip_list.flatten(1)

    #out.compact #compact not needed
end

def rearrange_array(nums)
  odd, even = nums.partition.with_index { |num, index| index.odd? }
  odd.sort!.reverse!
  even.sort!

  #zip_list = even.zip(odd).map(&:compact)
  even.zip(odd).flatten

  #out = zip_list.flatten(1)

  #out.compact #compact not needed
end
puts rearrange_array([4,1,2,3]).inspect

require 'enumerator'

def sort_even_odd(nums)
  sorted_even = nums.each_slice(2).map(&:sort).reduce([], :concat)
  sorted_odd = nums.drop(1).each_slice(2).map(&:sort).reverse.reduce([], :concat)
  result = sorted_even.zip(sorted_odd).flatten.compact
  result.pop if result.last
  result
end


puts rearrange_array([4,1,2,3]).inspect
# Output: [2, 3, 4, 1]



# *


# class Solution:
#     def sortEvenOdd(self, nums: List[int]) -> List[int]:
#         return s if (s := reduce(concat, zip_longest(sorted(islice(nums, 0, None, 2)), sorted(islice(nums, 1, None, 2), reverse= True))))[-1] else s[:-1]




# class Solution:
#   def sortEvenOdd(self, nums: List[int]) -> List[int]:
#       n = len(nums)
#       def quicksort(start, end, cmp):
#           if start >= end:
#               return
#           pivot = nums[end]
#           smaller = start - 2 
#           for i in range(start, end, 2):
#               if cmp(pivot, nums[i]):
#                   smaller += 2
#                   nums[smaller], nums[i] = nums[i], nums[smaller]
#           smaller += 2
#           nums[smaller], nums[end] = nums[end], nums[smaller]
#           quicksort(start, smaller - 2, cmp)
#           quicksort(smaller + 2, end, cmp)
#       quicksort(0, n - (2 - (n & 1)), lambda x,y: x > y)
#       quicksort(1, n - (1 + (n & 1)), lambda x,y: x < y)
#       return nums






