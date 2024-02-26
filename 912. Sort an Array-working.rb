# @param {Integer[]} nums
# @return {Integer[]}
def merge_sort(array)
   return array if array <= 1

   mid = array.length / 2
   left = array[0...mid]
   right = array[mid..]

   sorted_left = merge_sort(left)
   sorted_right = merge_sort(right)

end
def merge(left,right)
  merged_array=[]
  left_index=0
  right_index=0

  while left_index < left.length && right_index < right.length
   if left[leftindex] < right[right_index]
      merged_array << left_index
      left_index+=1
   else
      merged_array << right_index
      right_index+=1
   end
  end

# Add any remaining elements from left or right halves
merged_array += left[left_index..] if left_index < left.length
merged_array += right[right_index..] if right_index < right.length

merged_array
end







def merge_sort(array = [5, 2, 3, 1])
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
 
   # Add remaining elements from left or right arrays
   merged_array.concat(left[left_index..]) if left_index < left.length
   merged_array.concat(right[right_index..]) if right_index < right.length
 
   merged_array
 end
 
 puts merge_sort
 
# Example usage of merge sort
array = [38, 27, 43, 3, 9, 10]
puts "Original array: #{array}"

# Call merge_sort with puts statements to track changes
sorted_array = merge_sort(array)
puts "Sorted array: #{sorted_array}"

p sort_array