# all? - Passes each element of the collection to the given block; returns true if the block never returns false or nil
p [1, 2, 3].all? { |x| x > 0 }  # => true
# result = all(x > 0 for x in [1, 2, 3])
# print(result)

# any? - Passes each element of the collection to the given block; returns true if the block ever returns a value other than false or nil
p [1, 2, 3].any? { |x| x > 2 }  # => true
# result = any(x > 2 for x in [1, 2, 3])
# print(result)

# chunk - Divides the enumerable into chunks based on the return value of the block
p (1..10).chunk { |x| x.even? }.to_a  # => [[false, [1]], [true, [2, 3]], [false, [4, 5]], [true, [6, 7]], [false, [8, 9]], [true, [10]]]
# from itertools import groupby
# result = [[k, list(g)] for k, g in groupby([1, 2, 3, 4, 5, 6], key=lambda x: x % 2 == 0)]
# print(result)

# chunk_while - Divides the enumerable into chunks based on the return value of the block, which is evaluated between each element and its neighbor
p [1, 2, 4, 9, 10, 11, 12, 15].chunk_while { |i, j| i + 1 == j }.to_a  # => [[1, 2], [4], [9, 10, 11, 12], [15]]
# result = [list(group) for group in [[1, 2], [4], [9, 10, 11, 12], [15]]]
# print(result)

# collect - Maps each element of the collection to a new value based on the block
p [1, 2, 3].collect { |x| x * 2 }  # => [2, 4, 6]
# result = [x * 2 for x in [1, 2, 3]]
# print(result)

# collect_concat - Maps each element of the collection to a new collection, then concatenates all the resulting collections into one
p [[1, 2], [3, 4]].collect_concat { |x| x.map { |y| y * 2 } }  # => [2, 4, 6, 8]
# result = [y * 2 for x in [[1, 2], [3, 4]] for y in x]
# print(result)

# count - Returns the count of elements in the collection that satisfy the given condition
p [1, 2, 3, 4, 5].count { |x| x.even? }  # => 2
# result = sum(1 for x in [1, 2, 3, 4, 5] if x % 2 == 0)
# print(result)

# cycle - Repeats the collection a specified number of times or infinitely
p [1, 2, 3].cycle(2).to_a  # => [1, 2, 3, 1, 2, 3]
# from itertools import cycle, islice
# result = list(islice(cycle([1, 2, 3]), 6))
# print(result)

# detect - Returns the first element of the collection that satisfies the given condition
p [1, 2, 3].detect { |x| x > 1 }  # => 2
# result = next(x for x in [1, 2, 3] if x > 1)
# print(result)

# drop - Drops the first n elements from the collection
p [1, 2, 3].drop(2)  # => [3]
# result = [1, 2, 3][2:]
# print(result)

# drop_while - Drops elements from the collection until the block returns false
p [1, 2, 3, 4, 5].drop_while { |x| x < 3 }  # => [3, 4, 5]
# result = [x for x in [1, 2, 3, 4, 5] if x >= 3]
# print(result)

# each_cons - Iterates over the collection in consecutive chunks of a specified size
[1, 2, 3, 4].each_cons(2) { |x| p x }  # => [1, 2], [2, 3], [3, 4]
# from itertools import tee
# result = [pair for pair in zip(*[iter([1, 2, 3, 4])] * 2)]
# print(result)

# each_slice - Iterates over the collection in slices of a specified size
[1, 2, 3, 4, 5].each_slice(2) { |x| p x }  # => [1, 2], [3, 4], [5]
# result = [[1, 2], [3, 4], [5]]
# print(result)

# each_with_index - Iterates over the collection and provides the index along with the element
[1, 2, 3].each_with_index { |x, i| p "#{i}: #{x}" }  # => "0: 1", "1: 2", "2: 3"
# for i, x in enumerate([1, 2, 3]):
#     print(f"{i}: {x}")

# each_with_object - Iterates over the collection and provides an object to accumulate results
[1, 2, 3].each_with_object([]) { |x, arr| arr << x * 2 }  # => [2, 4, 6]
# result = [x * 2 for x in [1, 2, 3]]
# print(result)

# entries - Returns an array containing the items in the collection
p (1..3).entries  # => [1, 2, 3]
# result = list(range(1, 4))
# print(result)

# filter - Returns a new array containing the items in the collection that satisfy the given condition
p [1, 2, 3].filter { |x| x > 1 }  # => [2, 3]
# result = [x for x in [1, 2, 3] if x > 1]
# print(result)

# filter_map - Returns a new array containing the results of running the block for each item in the collection that satisfies the given condition
p [1, 2, 3].filter_map { |x| x * 2 if x > 1 }  # => [4, 6]
# result = [x * 2 for x in [1, 2, 3] if x > 1]
# print(result)

# find - Returns the first element in the collection that satisfies the given condition
p [1, 2, 3].find { |x| x > 1 }  # => 2
# result = next(x for x in [1, 2, 3] if x > 1)
# print(result)

# find_all - Returns an array containing all elements in the collection that satisfy the given condition
p [1, 2, 3].find_all { |x| x > 1 }  # => [2, 3]
# result = [x for x in [1, 2, 3] if x > 1]
# print(result)

# find_index - Returns the index of the first element in the collection that satisfies the given condition
p [1, 2, 3].find_index { |x| x > 1 }  # => 1
# result = next(i for i, x in enumerate([1, 2, 3]) if x > 1)
# print(result)

# flat_map - Maps each element of the collection to a new collection, then flattens the result
p [[1, 2], [3, 4]].flat_map { |x| x.map { |y| y * 2 } }  # => [2, 4, 6, 8]
# result = [y * 2 for x in [[1, 2], [3, 4]] for y in x]
# print(result)

# grep - Returns an array containing all elements in the collection that match the given pattern
p ["apple", "banana", "cherry"].grep(/a/)  # => ["apple", "banana"]
# import re
# result = [s for s in ["apple", "banana", "cherry"] if re.search("a", s)]
# print(result)

# grep_v - Returns an array containing all elements in the collection that do not match the given pattern
p ["apple", "banana", "cherry"].grep_v(/a/)  # => ["cherry"]
# result = [s for s in ["apple", "banana", "cherry"] if not re.search("a", s)]
# print(result)

# group_by - Groups the elements of the collection by the result of the block
p [1, 2, 3, 4].group_by { |x| x.even? }  # => {false=>[1, 3], true=>[2, 4]}
# from itertools import groupby
# result = {k: list(g) for k, g in groupby([1, 2, 3, 4], key=lambda x: x % 2 == 0)}
# print(result)

# include? - Returns true if the collection includes the given value
p [1, 2, 3].include?(2)  # => true
# result = 2 in [1, 2, 3]
# print(result)

# inject - Combines all elements of the collection by applying a binary operation, specified by a block or a symbol
p [1, 2, 3].inject(:+)  # => 6
# result = sum([1, 2, 3])
# print(result)

# lazy - Lazily computes enumerables for potentially infinite collections
p (1..Float::INFINITY).lazy.select(&:even?).first(5).to_a  # => [2, 4, 6, 8, 10]
# from itertools import count, islice
# result = list(islice((x for x in count() if x % 2 == 0), 5))
# print(result)

# map - Maps each element of the collection to a new value based on the block
p [1, 2, 3].map { |x| x * 2 }  # => [2, 4, 6]
# result = [x * 2 for x in [1, 2, 3]]
# print(result)

# max - Returns the maximum element in the collection (compared using <=>)
p [1, 2, 3].max  # => 3
# result = max([1, 2, 3])
# print(result)

# max_by - Returns the maximum element in the collection based on the value returned by the block
p [1, 2, 3].max_by { |x| -x }  # => 1
# result = max([1, 2, 3], key=lambda x: -x)
# print(result)

# min - Returns the minimum element in the collection (compared using <=>)
p [1, 2, 3].min  # => 1
# result = min([1, 2, 3])
# print(result)

# min_by - Returns the minimum element in the collection based on the value returned by the block
p [1, 2, 3].min_by { |x| -x }  # => 3
# result = min([1, 2, 3], key=lambda x: -x)
# print(result)

# minmax - Returns a two-element array containing the minimum and maximum elements of the collection
p [1, 2, 3].minmax  # => [1, 3]
# result = [min([1, 2, 3]), max([1, 2, 3])]
# print(result)

# minmax_by - Returns a two-element array containing the minimum and maximum elements of the collection based on the value returned by the block
p [1, 2, 3].minmax_by { |x| -x }  # => [3, 1]
# result = [max([1, 2, 3], key=lambda x: -x), min([1, 2, 3], key=lambda x: -x)]
# print(result)

# none? - Passes each element of the collection to the given block; returns true if the block always returns false or nil
p [1, 2, 3].none? { |x| x > 3 }  # => true
# result = not any(x > 3 for x in [1, 2, 3])
# print(result)

# one? - Passes each element of the collection to the given block; returns true if the block returns true exactly once
p [1, 2, 3].one? { |x| x == 2 }  # => true
# result = sum(1 for x in [1, 2, 3] if x == 2) == 1
# print(result)

# partition - Divides the collection into two groups based on the result of the block
p [1, 2, 3, 4].partition { |x| x.even? }  # => [[2, 4], [1, 3]]
# result = [[x for x in [1, 2, 3, 4] if x % 2 == 0], [x for x in [1, 2, 3, 4] if x % 2 != 0]]
# print(result)

# reduce - Combines all elements of the collection by applying a binary operation, specified by a block or a symbol
p [1, 2, 3].reduce(:+)  # => 6
# result = sum([1, 2, 3])
# print(result)

# reject - Returns a new array containing the items in the collection that do not satisfy the given condition
p [1, 2, 3].reject { |x| x > 1 }  # => [1]
# result = [x for x in [1, 2, 3] if x <= 1]
# print(result)

# reverse_each - Iterates over the collection in reverse order
[1, 2, 3].reverse_each { |x| p x }  # => 3, 2, 1
# result = [3, 2, 1]
# print(result)

# select - Returns a new array containing the items in the collection that satisfy the given condition
p [1, 2, 3].select { |x| x > 1 }  # => [2, 3]
# result = [x for x in [1, 2, 3] if x > 1]
# print(result)

# slice_after - Slices the collection after each element that satisfies the given block
p [1, 2, 3, 4].slice_after { |x| x.even? }.to_a  # => [[1, 2], [3, 4]]
# result = [[1, 2], [3, 4]]
# print(result)

# slice_before - Slices the collection before each element that satisfies the given block
p [1, 2, 3, 4].slice_before { |x| x.even? }.to_a  # => [[1], [2, 3], [4]]
# result = [[1], [2, 3], [4]]
# print(result)

# slice_when - Slices the collection based on adjacent elements for which the block returns true
p [1, 2, 4, 9, 10, 11, 12, 15].slice_when { |i, j| i + 1 != j }.to_a  # => [[1], [2], [4, 9, 10, 11, 12], [15]]
# result = [[1], [2], [4, 9, 10, 11, 12], [15]]
# print(result)

# sort - Returns a new array containing the items in the collection sorted
p [3, 1, 2].sort  # => [1, 2, 3]
# result = sorted([3, 1, 2])
# print(result)

# sort_by - Returns a new array containing the items in the collection sorted based on the value returned by the block
p [3, 1, 2].sort_by { |x| -x }  # => [3, 2, 1]
# result = sorted([3, 1, 2], key=lambda x: -x)
# print(result)

# sum - Returns the sum of elements in the collection
p [1, 2, 3].sum  # => 6
# result = sum([1, 2, 3])
# print(result)

# take - Returns the first n elements from the collection
p [1, 2, 3].take(2)  # => [1, 2]
# result = [1, 2]
# print(result)

# take_while - Takes elements from the collection until the block returns false
p [1, 2, 3, 4, 5].take_while { |x| x < 3 }  # => [1, 2]
# result = [x for x in [1, 2, 3, 4, 5] if x < 3]
# print(result)

# to_a - Converts the collection to an array
p (1..3).to_a  # => [1, 2, 3]
# result = list(range(1, 4))
# print(result)

# uniq - Returns a new array containing the unique elements in the collection
p [1, 2, 2, 3].uniq  # => [1, 2, 3]
# result = list(set([1, 2, 2, 3]))
# print(result)

# zip - Combines elements of the collection with corresponding elements from one or more other collections
p [1, 2, 3].zip([4, 5, 6])  # => [[1, 4], [2, 5], [3, 6]]
# result = list(zip([1, 2, 3], [4, 5, 6]))
# print(result)


# Using the & operator
# nums1 = [1, 2, 3, 4, 5]
# nums2 = [4, 5, 6, 7, 8]
# result = list(set(nums1) & set(nums2))
# print(result)  # Output: [4, 5]


# Using the & operator
nums1 = [1, 2, 3, 4, 5]
nums2 = [3, 4, 5, 6, 7]
nums3 = [3,4,5,11,13,19]

result = nums1 & nums2
puts result.inspect  # Output: [4, 5]

result = [nums1, nums2,].reduce(:&)
puts result.inspect  # Output: [4, 5]

result = [nums1, nums2, nums3].reduce(:&)
puts result.inspect  # Output: [4, 5]



# Using the & operator
# nums1 = [1, 2, 3, 4, 5]
# nums2 = [4, 5, 6, 7, 8]
# result = list(set(nums1) & set(nums2))
# print(result)  # Output: [4, 5]

# from functools import reduce

# # Ruby's reduce(:&)
# nums1 = [1, 2, 3, 4, 5]
# nums2 = [4, 5, 6, 7, 8]
# result = reduce(lambda x, y: x & y, [set(nums1), set(nums2)])
# print(list(result))  # Output: [4, 5]

# # Ruby's reduce(:&)
# nums1 = [1, 2, 3, 4, 5]
# nums2 = [4, 5, 6, 7, 8]
# nums3 = [3,4,5,11,13,19]
# #Using the & operator directly
# result = list(set(nums1) & set(nums2) & set(nums3))
# print(result)  # Output: [3, 4, 5]


# Example: Group consecutive numbers
arr = [1, 2, 3, 5, 6, 7, 10, 12, 13]

p chunks = arr.chunk_while { |a, b| b == a.succ }.to_a

chunks.each do |chunk|
  p chunk
end
