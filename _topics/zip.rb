#* ARRAY => ZIP
#* LEARN => ZIP
arr=[1,2,3]
array=[11,12,13]
p arr.zip(array)

names = ["Mary", "John", "Emma"]
heights = [180, 165, 170]

p names.zip(heights).sort_by{ |k,v| -v}

arr1 = [1, 2, 3]
arr2 = ['a', 'b', 'c']

result = arr1.zip(arr2)
puts result.inspect
# Output:
# [[1, "a"], [2, "b"], [3, "c"]]
# In this example, arr1 and arr2 are zipped together, creating a new array where each element is a pair of corresponding elements from arr1 and arr2.

# You can also zip more than two arrays together:


arr1 = [1, 2, 3]
arr2 = ['a', 'b', 'c']
arr3 = [:x, :y, :z]

result = arr1.zip(arr2, arr3)
puts result.inspect
# Output:

# css
# Copy code
# [[1, "a", :x], [2, "b", :y], [3, "c", :z]]
# In this example, arr1, arr2, and arr3 are zipped together, creating a new array where each element is a tuple of corresponding elements from all three arrays.

# zip stops when the shortest array is exhausted. If the arrays are of unequal length, the resulting array will have the length of the shortest array.

# zip can also be used with blocks to perform custom operations on the zipped elements. For example:

# ruby
# Copy code
arr1 = [1, 2, 3]
arr2 = [10, 20, 30]

result = arr1.zip(arr2).map { |a, b| a * b }
puts result.inspect
