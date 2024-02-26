# @param {Integer[]} nums
# @return {Integer[]}
#* MERGE SORT | SOL 1
#* sort merge sort counting sort array min max
def sort_array(nums=[1,7,5,3,6,11])
  return nums if nums.length <= 1

  mid = nums.length / 2
  left = nums[0...mid]
  right = nums[mid..]

  sorted_left = sort_array(left)
  sorted_right = sort_array(right)
  merge(sorted_left, sorted_right)
end
def merge(left, right)
  merged_array = []
  left_index = 0
  right_index = 0

  while left_index < left.length && right_index < right.length
    if left[left_index] < right[right_index]
      merged_array << left[left_index]
      left_index += 1
    else
      merged_array << right[right_index]
      right_index += 1
    end
  end
  merged_array += left[left_index..] if left_index < left.length
  merged_array += right[right_index..] if right_index < right.length
  merged_array
end
p sort_array

#* COUNTING SORT | SOL 2
def sort_array(nums=[1,7,5,3,6,11])
  counting_sort(nums)
end
def counting_sort(nums)
  index = 0
  min, max = nums.min, nums.max
  counts = Array.new(max - min + 1, 0)
  nums.each { |num| counts[num - min] += 1 }
  
  counts.each_with_index do |num, i|
    nums.fill(i + min, index, num)
    index += num
  end
  nums
end
p sort_array
