def find_and_print_all_subarrays(arr)
  finalsum, subarrays = 0,[]
  # iter all possible start indices
  (0...arr.length).each do |start|
    # iter all possible end indices
    (start...arr.length).each do |end_index|
      # extract the subarray from start to end_index
      subarray = arr[start..end_index]
      subarrays.push(subarray)
      p subarray
    end
  end
  p subarrays
    
  for sa in subarrays do
    finalsum+= sa.min
  end
  p finalsum and return finalsum
end

arr = [3, 1, 2, 4]
result = find_and_print_all_subarrays(arr)

# You can use 'result' if you need the array of subarrays for further processing
