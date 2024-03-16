def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = array[0...mid]
  right = array[mid..]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)
end
def merge(left, right)
  merged_array = []
  left_index=0
  right_index=0

  while left_index < left.length && right_index < right.length

    if left[left_index] <= right[right_index]
      merged_array << left[left_index]
      left_index+=1
    else
      merged_array << right[right_index]
      right_index+=1
    end

  end
  # Add any remaining elements from left or right halves
  merged_array += left[left_index..] if left_index < left.length
  merged_array += right[right_index..] if right_index < right.length

  merged_array
end

#* RR
def merge_sort(array)
  return array if array.length <= 1
  mid = array.length / 2
  left = array[0...mid]
  right=array[mid..]

  sleft = merge_sort(left)
  sright = merge_sort(right)

  merge(sleft, sright)
end
def merge(left, right)
  merged_array=[]
  leftind = 0
  rightind = 0

  while leftind < left.length && rightind < right.length
    if left[leftind] <= right[rightind]
      merged_array << left[leftind]
      leftind += 1
    else
      merged_array << right[rightind]
      rightind += 1
    end
  end

  # Add any remaining elements from left or right halves
  merged_array += left[leftind..] if leftind < left.length
  merged_array += right[rightind..] if rightind < right.length

  merged_array
end

# Example usage of merge sort
array = [38, 27, 43, 3, 9, 10]
puts "Original array: #{array}"

# Call merge_sort with puts statements to track changes
sorted_array = merge_sort(array)
puts "Sorted array: #{sorted_array}"


a = ['all', 'nice', 'zebra']
p a.sort
p a.sort_by { |x| x }
p a.sort_by { |x| -x }
p a.sort { |x, y| y <=> x }
p a.sort_by{|a,b| b <=> a}
# p a.sort_by{_1}
# p a.sort_by{|a,b| b <=> a}
# p a.sort_by{|a| -a}
#p a.sort_by(&:~)