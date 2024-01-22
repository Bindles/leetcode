# @param {Integer[]} arr
# @return {Integer}
def sum_subarray_mins(arr = [3,1,2,4])
    subarrays=[]
    p 'a'
    (0...arr.length).each do |start|
      (start...arr.length).each do |endindex|
        subarray = [start..endindex]
        subarrays.push(subarray)
      end
    
    end
    return subarrays
end

result = sum_subarray_mins

# Print the result
result.each do |subarray|
  puts subarray.inspect
end

p sum_subarray_mins