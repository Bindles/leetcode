def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = array[0...mid]
  right = array[mid..]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge_sort(sorted_left, sorted_right)
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
end

def merge_sort(array)
  # Base case: If the array has 0 or 1 elements, it's already sorted
  return array if array.length <= 1

  # Divide the array into two halves
  middle = array.length / 2
  left_half = array[0...middle]
  right_half = array[middle..]

  puts "Dividing array into halves: \n #{left_half} \n #{right_half}"

  # Recursively sort each half of the array
  sorted_left_half = merge_sort(left_half)
  sorted_right_half = merge_sort(right_half)

  # Combine the sorted halves back together
  merge(sorted_left_half, sorted_right_half)
end

def merge(left, right)
  merged_array = []
  left_index, right_index = 0, 0

  # Merge the two halves together in sorted order
  while left_index < left.length && right_index < right.length
    if left[left_index] <= right[right_index]
      merged_array << left[left_index]
      left_index += 1
    else
      merged_array << right[right_index]
      right_index += 1
    end
  end

  # Add any remaining elements from left or right halves
  merged_array += left[left_index..] if left_index < left.length
  merged_array += right[right_index..] if right_index < right.length

  merged_array
end

# Example usage of merge sort
array = [38, 27, 43, 3, 9, 10]
puts "Original array: #{array}"

# Call merge_sort with puts statements to track changes
sorted_array = merge_sort(array)
puts "Sorted array: #{sorted_array}"
