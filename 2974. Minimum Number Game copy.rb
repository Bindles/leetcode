

def number_game(a = [5,4,2,3])
  # Sort the input array a in ascending order
  a.sort!

  # Initialize an empty array to store the elements appended to arr
  arr = []

  # Iterate over the sorted array a in slices of size 2
  a.each_slice(2) do |slice|
    # Print the current slice being processed
    puts "Current slice: #{slice.inspect}"

    # Reverse the order of elements in the slice
    slice.reverse!

    # Print the reversed slice
    puts "Reversed slice: #{slice.inspect}"

    # Append the reversed slice to the arr array
    arr += slice

    # Print the updated arr array
    puts "Updated arr: #{arr.inspect}"
  end

  # Return the resulting array arr
  arr
end

p number_game






#WORKING...
def number_game(nums = [5,4,2,3])

end


p a=[5,4,2,3]
a.each_slice(2) do |s|
  p s
end
p b=a.sort
p b.each_slice(2).flat_map { _1.reverse! }
p b.each_slice(2).map(&:reverse).flatten
p b.each_slice(2).flat_map(&:reverse)
