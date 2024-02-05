#(AMOUNT/VALUE)
#push/pop last
#unshift/shift first
# @param {Integer[]} nums
# @return {Integer[]}
#MY SOLUTION
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    a = nums.min(2)
    arr.push(a.reverse)
    nums.delete_at(nums.index(a[0]))
    nums.delete_at(nums.index(a[1]))
    i+=1
  end
  arr.flatten
end


#MY SOLUTION | DEBUG PUTS
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p a = nums.min(2)
    p arr.push(a.reverse)
    p nums.delete_at(nums.index(a[0]))
    p nums.delete_at(nums.index(a[1]))
    p '-'
    p nums
    p arr
    i+=1
  end
  p arr.flatten
end

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


def number_game(a = [5, 4, 2, 3])
  # Sort the input array a in ascending order
  a.sort!
  # Iterate over the sorted array a in slices of size 2
  selected_slices = a.each_slice(2).select do |slice|
    # Print the current slice being processed
    puts "Current slice: #{slice.inspect}"

    # Reverse the order of elements in the slice
    slice.reverse!

    # Print the reversed slice
    puts "Reversed slice: #{slice.inspect}"

    # Return true to include this slice in the selected_slices array
    true
  end

  # Flatten the array of selected slices into a single array
  # where the inner arrays are concatenated together
  # in a single level.
  selected_slices.flat_map { |slice| slice }
end





def number_game(a = [5, 4, 2, 3])
  # Sort the input array a in ascending order
  a.sort!

  # Iterate over the sorted array a in slices of size 2
  a.each_slice(2).select { |slice|slice.reverse! }.flat_map { |slice| slice }
end

p number_game






#WORKING...
def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p i
    p nums
    i.even?  ? (p arr.push(nums.pop(2).reverse)) : (p arr.push(nums.pop(2)))
    p nums
    i+=1
  end
  return arr.flatten.join.to_i.digits.reverse
end


def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p nums
    p arr.push(nums.pop(2).reverse)
    p nums
    i+=1
  end
  return arr.flatten.join.digits.reverse
end


def number_game(nums = [5,4,2,3])
  arr=[]
  i = 0
  ii = nums.length / 2
  while i < ii
    p a = nums.min(2)
    p arr.push(a.reverse)
    p nums.delete(a[0])
    p nums.delete(a[1])
    p '-'
    p nums
    p arr
    i+=1
  end
  p arr.flatten
  #return arr.flatten.join.digits.reverse
end

#p number_game

# aaa = [1,2,3]
# aaa.pop
# p aaa