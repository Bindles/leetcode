#* ENUMERABLE ***********
#* ZIP|Enum.zip
# The `zip` method in Ruby is used to combine elements from two arrays into a single array
# of arrays. It takes one or more arrays and merges elements from each array together based
# on their index position. Each resulting array will contain elements from the input arrays
# at the same index. If one array is longer than the other, the extra elements will be
# discarded.
p [1,2,3].zip(['a', 'b', 'c'])

#* PARTITION | Enum.partition
# The `partition` method in Ruby's `Enumerable` module is used to split an array into two
# arrays based on a condition specified in a block. It returns an array containing two
# arrays: the first array contains elements for which the block evaluates to true, and
# the second array contains elements for which the block evaluates to false.
partarr = [1, 2, 3, 4, 11, 12, 13, 14]
p partarr.partition {|n| n.even?} # => [[2, 4, 12, 14], [1, 3, 5, 11, 13, 15]]

#*MAP | Enum.map
# The `map` method in Ruby is used to transform elements in an array based on the block
# provided. In this case, `maparr.map(&:even?)` is iterating over each element in the
# `maparr` array and applying the `even?` method to each element. The result will be a new
# array where each element is a boolean value indicating whether the corresponding element in
# the original array is even or not.
maparr=[1,2,3,4,5,6]
p maparr.map(&:even?)
p maparr.map{|num| num if num.even?}.compact #INEFFICIENT => USE SELECT
p maparr.map.with_index{|num,index| index if num.even?}.compact #get index/indices

#*SELECT | Enum.select
print maparr.select{|num|num.even?}; p maparr.select(&:odd?)
# The `select` method in Ruby is used to filter elements from an array based on a
# condition specified in a block. It iterates over each element in the array and selects
# only the elements for which the block evaluates to true. In the context of the code
# snippet provided, `maparr.select{|num| num.even?}` is selecting and returning only the
# elements in the `maparr` array that are even numbers. Similarly,
# `maparr.select(&:odd?)` is selecting and returning only the elements in the `maparr`
# array that are odd numbers.

#* BSEARCH & BSEARCH_INDEX | Enum.bsearch / bsearch_index
# The `bsearch` method in Ruby is a binary search method that is used to find a value in a sorted
# array. It takes a block as an argument that should return true if the desired element is less
# than the current element, false if it is greater, and nil if it is equal. The `bsearch` method
# then performs a binary search on the array to find the element that matches the condition
# specified in the block. If the element is found, it returns the element; otherwise, it returns
# nil.
a=[1,2,3,4,5,6,7,8,9,10,11]
b=(1..11).to_a
p b
p b.bsearch{|n| p 'step'; n == 6}
p b.bsearch_index{|n| p 'step'; n == 6}

#*REJECT
# # The `reject` method in Ruby's `Enumerable` module is used to filter elements from an array based
# on a condition specified in a block, similar to the `select` method. However, `reject` will return
# a new array containing only the elements for which the block evaluates to false. In other words,
# it excludes elements that meet the condition specified in the block.

#* REDUCE
# by applying a binary operation specified in a block. It iterates over the elements of the
# array and accumulates a single result by applying the block to each element and the current
# accumulated value. The result of the `reduce` method is the final accumulated value after
# processing all elements in the array.


# The `take_while` method in Ruby's `Enumerable` module is used to create a new array
# containing elements from the beginning of the original array until the block condition
# specified is no longer met. It iterates over the elements of the array and takes
# elements from the start of the array as long as the block condition evaluates to true.
# Once the block condition returns false, `take_while` stops iterating and returns the
# array containing the elements taken up to that point.

# The `drop_while` method in Ruby's `Enumerable` module is used to remove
# elements from the beginning of an array until the block condition specified
# is no longer met. It iterates over the elements of the array and drops
# elements from the start of the array as long as the block condition
# evaluates to true. Once the block condition returns false, `drop_while`
# stops dropping elements and returns the remaining elements of the array.

# The `chunk` method in Ruby's `Enumerable` module is used to
# group consecutive elements in an array based on the return value
# of the block. It iterates over the elements of the array and
# creates chunks of consecutive elements where the block returns
# the same value. The result is an enumerator that yields arrays
# containing the key and an array of elements that share the same
# key value.

#reject reduce take_while drop_while chunk grep slice slice_each slice_before

ax=[1,2,3,4,5,6,7,8,9,10,11]

p ax.take(4)
p ax.drop(2)


days = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
reso = 
  days.map{|day| day.odd? ? 
  {task: 'dishes', minutes: Random.rand(20)} :
  {task: 'sweep', minutes: Random.rand(20)}}
  .select{|task| task[:minutes] < 15}
  .reject{|task| task[:minutes] < 5}
  .reduce(0) {|sum, task| sum + task[:minutes]}

p reso

# Map/filter are considered inferior in Python to list comprehensions.
#   res = [x**2 for x in range(10) if x != 5]

	
# michaelteter on Jan 4, 2023 | root | parent | next [–]

# Before Ruby introduced filter_map:
# res = (1..10).select { |x| x != 5 }.map { |x| x ** 2 }

# With filter_map:

# res = (1..10).filter_map { |x| x ** 2 if x != 5 }

# In both cases, I think the Ruby solution is more readable.


fma = [1,2,3,4,5,6]
p fma.select{|x| x.even?}.map{|x| x*100}
p fma.filter_map{ |x| x.even? && x * 100}
p fma.filter_map{ |x| x * 100 if x.even?}

result = "hello".yield_self { |str| str.upcase }
#=> "HELLO"
p result


# Suppose we have a string representing a name that we want to process.
name = "john doe"

# We want to capitalize the name and split it into separate words.

# Without yield_self:
capitalized_name = name.capitalize
words = capitalized_name.split
p words

# With yield_self:
words = name.capitalize.yield_self { |str| str.split }
p words

nums = [1, 2, 3, 4, 5]
arr=[10,20,30]

result = nums.select { |x| x.even? && x % 4 == 0 }.join.to_i.yield_self do |selected_num|
  arr.map { |x| x * selected_num }
end

arrtos = [1,5,8]
arrtos.map(&:to_s)
p arrtos.each_with_index.to_h.to_a
p arrtos.map(&:to_s).each_with_index.to_h.to_a

# Example 22: Using blocks and yielding in Ruby methods
def execute_and_print
  puts "Executing method"
  yield if block_given?
  puts "Method execution complete"
end
  # Calling the method with a block
  execute_and_print { puts "Block code running" }
  


puts result.inspect

p [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1].reverse