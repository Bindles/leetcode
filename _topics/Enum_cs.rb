# all? - Passes each element of the collection to the given block; returns true if the block never returns false or nil
p [1, 2, 3].all? { |x| x > 0 }  # => true

# any? - Passes each element of the collection to the given block; returns true if the block ever returns a value other than false or nil
p [1, 2, 3].any? { |x| x > 2 }  # => true

# chunk - Divides the enumerable into chunks based on the return value of the block
p (1..10).chunk { |x| x.even? }.to_a  # => [[false, [1]], [true, [2, 3]], [false, [4, 5]], [true, [6, 7]], [false, [8, 9]], [true, [10]]]

# chunk_while - Divides the enumerable into chunks based on the return value of the block, which is evaluated between each element and its neighbor
p [1, 2, 4, 9, 10, 11, 12, 15].chunk_while { |i, j| i + 1 == j }.to_a  # => [[1, 2], [4], [9, 10, 11, 12], [15]]

# collect - Maps each element of the collection to a new value based on the block
p [1, 2, 3].collect { |x| x * 2 }  # => [2, 4, 6]

# collect_concat - Maps each element of the collection to a new collection, then concatenates all the resulting collections into one
p [[1, 2], [3, 4]].collect_concat { |x| x.map { |y| y * 2 } }  # => [2, 4, 6, 8]

# count - Returns the count of elements in the collection that satisfy the given condition
p [1, 2, 3, 4, 5].count { |x| x.even? }  # => 2

# cycle - Repeats the collection a specified number of times or infinitely
p [1, 2, 3].cycle(2).to_a  # => [1, 2, 3, 1, 2, 3]

# detect - Returns the first element of the collection that satisfies the given condition
p [1, 2, 3].detect { |x| x > 1 }  # => 2

# drop - Drops the first n elements from the collection
p [1, 2, 3].drop(2)  # => [3]

# drop_while - Drops elements from the collection until the block returns false
p [1, 2, 3, 4, 5].drop_while { |x| x < 3 }  # => [3, 4, 5]

# each_cons - Iterates over the collection in consecutive chunks of a specified size
[1, 2, 3, 4].each_cons(2) { |x| p x }  # => [1, 2], [2, 3], [3, 4]

# each_slice - Iterates over the collection in slices of a specified size
[1, 2, 3, 4, 5].each_slice(2) { |x| p x }  # => [1, 2], [3, 4], [5]

# each_with_index - Iterates over the collection and provides the index along with the element
[1, 2, 3].each_with_index { |x, i| p "#{i}: #{x}" }  # => "0: 1", "1: 2", "2: 3"

# each_with_object - Iterates over the collection and provides an object to accumulate results
[1, 2, 3].each_with_object([]) { |x, arr| arr << x * 2 }  # => [2, 4, 6]

# entries - Returns an array containing the items in the collection
p (1..3).entries  # => [1, 2, 3]

# filter - Returns a new array containing the items in the collection that satisfy the given condition
p [1, 2, 3].filter { |x| x > 1 }  # => [2, 3]

# filter_map - Returns a new array containing the results of running the block for each item in the collection that satisfies the given condition
p [1, 2, 3].filter_map { |x| x * 2 if x > 1 }  # => [4, 6]

# find - Returns the first element in the collection that satisfies the given condition
p [1, 2, 3].find { |x| x > 1 }  # => 2

# find_all - Returns an array containing all elements in the collection that satisfy the given condition
p [1, 2, 3].find_all { |x| x > 1 }  # => [2, 3]

# find_index - Returns the index of the first element in the collection that satisfies the given condition
p [1, 2, 3].find_index { |x| x > 1 }  # => 1

# flat_map - Maps each element of the collection to a new collection, then flattens the result
p [[1, 2], [3, 4]].flat_map { |x| x.map { |y| y * 2 } }  # => [2, 4, 6, 8]

# grep - Returns an array containing all elements in the collection that match the given pattern
p ["apple", "banana", "cherry"].grep(/a/)  # => ["apple", "banana"]

# grep_v - Returns an array containing all elements in the collection that do not match the given pattern
p ["apple", "banana", "cherry"].grep_v(/a/)  # => ["cherry"]

# group_by - Groups the elements of the collection by the result of the block
p [1, 2, 3, 4].group_by { |x| x.even? }  # => {false=>[1, 3], true=>[2, 4]}

# include? - Returns true if the collection includes the given value
p [1, 2, 3].include?(2)  # => true

# inject - Combines all elements of the collection by applying a binary operation, specified by a block or a symbol
p [1, 2, 3].inject(:+)  # => 6

# lazy - Lazily computes enumerables for potentially infinite collections
p (1..Float::INFINITY).lazy.select(&:even?).first(5).to_a  # => [2, 4, 6, 8, 10]

# map - Maps each element of the collection to a new value based on the block
p [1, 2, 3].map { |x| x * 2 }  # => [2, 4, 6]

# max - Returns the maximum element in the collection (compared using <=>)
p [1, 2, 3].max  # => 3

# max_by - Returns the maximum element in the collection based on the value returned by the block
p [1, 2, 3].max_by { |x| -x }  # => 1

# min - Returns the minimum element in the collection (compared using <=>)
p [1, 2, 3].min  # => 1

# min_by - Returns the minimum element in the collection based on the value returned by the block
p [1, 2, 3].min_by { |x| -x }  # => 3

# minmax - Returns a two-element array containing the minimum and maximum elements of the collection
p [1, 2, 3].minmax  # => [1, 3]

# minmax_by - Returns a two-element array containing the minimum and maximum elements of the collection based on the value returned by the block
p [1, 2, 3].minmax_by { |x| -x }  # => [3, 1]

# none? - Passes each element of the collection to the given block; returns true if the block always returns false or nil
p [1, 2, 3].none? { |x| x > 3 }  # => true

# one? - Passes each element of the collection to the given block; returns true if the block returns true exactly once
p [1, 2, 3].one? { |x| x == 2 }  # => true

# partition - Divides the collection into two groups based on the result of the block
p [1, 2, 3, 4].partition { |x| x.even? }  # => [[2, 4], [1, 3]]

# reduce - Combines all elements of the collection by applying a binary operation, specified by a block or a symbol
p [1, 2, 3].reduce(:+)  # => 6

# reject - Returns a new array containing the items in the collection that do not satisfy the given condition
p [1, 2, 3].reject { |x| x > 1 }  # => [1]

# reverse_each - Iterates over the collection in reverse order
[1, 2, 3].reverse_each { |x| p x }  # => 3, 2, 1

# select - Returns a new array containing the items in the collection that satisfy the given condition
p [1, 2, 3].select { |x| x > 1 }  # => [2, 3]

# slice_after - Slices the collection after each element that satisfies the given block
p [1, 2, 3, 4].slice_after { |x| x.even? }.to_a  # => [[1, 2], [3, 4]]

# slice_before - Slices the collection before each element that satisfies the given block
p [1, 2, 3, 4].slice_before { |x| x.even? }.to_a  # => [[1], [2, 3], [4]]

# slice_when - Slices the collection based on adjacent elements for which the block returns true
p [1, 2, 4, 9, 10, 11, 12, 15].slice_when { |i, j| i + 1 != j }.to_a  # => [[1], [2], [4, 9, 10, 11, 12], [15]]

# sort - Returns a new array containing the items in the collection sorted
p [3, 1, 2].sort  # => [1, 2, 3]

# sort_by - Returns a new array containing the items in the collection sorted based on the value returned by the block
p [3, 1, 2].sort_by { |x| -x }  # => [3, 2, 1]

# sum - Returns the sum of elements in the collection
p [1, 2, 3].sum  # => 6

# take - Returns the first n elements from the collection
p [1, 2, 3].take(2)  # => [1, 2]

# take_while - Takes elements from the collection until the block returns false
p [1, 2, 3, 4, 5].take_while { |x| x < 3 }  # => [1, 2]

# to_a - Converts the collection to an array
p (1..3).to_a  # => [1, 2, 3]

# uniq - Returns a new array containing the unique elements in the collection
p [1, 2, 2, 3].uniq  # => [1, 2, 3]

# zip - Combines elements of the collection with corresponding elements from one or more other collections
p [1, 2, 3].zip([4, 5, 6])  # => [[1, 4], [2, 5], [3, 6]]
