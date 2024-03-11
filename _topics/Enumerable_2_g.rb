# Enumerable Methods Guide with Comments

# 1. each
#    Description: Calls the given block once for each element in the collection.
#    Example:
p [1, 2, 3].each { |num| puts num }

# 2. map
#    Description: Returns a new array with the results of running the block once for every element in the collection.
#    Example:
p [1, 2, 3].map { |num| num * 2 }

# 3. select
#    Description: Returns a new array containing elements for which the given block returns true.
#    Example:
p [1, 2, 3, 4, 5].select { |num| num.even? }

# 4. find
#    Description: Returns the first element in the collection for which the given block returns true.
#    Example:
p [1, 2, 3, 4, 5].find { |num| num > 2 }

# 5. partition
#    Description: Returns two arrays based on the given block's return value: one for elements where the block is true and another for false.
#    Example:
p [1, 2, 3, 4, 5].partition { |num| num.even? }

# 6. zip
#    Description: Combines elements from the receiver with corresponding elements from one or more arrays and returns a new array of arrays.
#    Example:
p [1, 2, 3].zip(['a', 'b', 'c'])

# 7. bsearch
#    Description: Performs a binary search and returns the first element for which the block returns true.
#    Example:
p [1, 2, 3, 4, 5].bsearch { |num| num > 2 }

# 8. sort
#    Description: Returns a new array with the elements sorted.
#    Example:
p [3, 1, 2].sort

# 9. sort_by
#    Description: Returns a new array with the elements sorted based on the given block's return values.
#    Example:
p ['banana', 'apple', 'orange'].sort_by { |fruit| fruit.length }

# 10. max
#     Description: Returns the maximum element in the collection.
#     Example:
p [3, 1, 5].max

# 11. max_by
#     Description: Returns the element in the collection for which the given block returns the maximum value.
#     Example:
p ['banana', 'apple', 'orange'].max_by { |fruit| fruit.length }

# 12. min
#     Description: Returns the minimum element in the collection.
#     Example:
p [3, 1, 5].min

# 13. min_by
#     Description: Returns the element in the collection for which the given block returns the minimum value.
#     Example:
p ['banana', 'apple', 'orange'].min_by { |fruit| fruit.length }

# 14. reject
#     Description: Returns a new array containing elements for which the given block returns false.
#     Example:
p [1, 2, 3, 4, 5].reject { |num| num.even? }

# 15. chunk
#     Description: Groups consecutive elements based on the return value of the given block.
#     Example:
p [1, 2, 3, 5, 6, 8].chunk(&:even?).to_a

# 16. grep
#     Description: Returns an array containing elements that match the given pattern.
#     Example:
p ['apple', 'banana', 'pear'].grep(/a/)
p ['apple', 'banana', 'pear'].grep('apple')
p ['apple', 'banana', 'pear'].grep('pear')

# 17. slice_before
#     Description: Splits the array before elements for which the given block returns true.
#     Example:
p [1, 2, 3, 5, 6, 8].slice_before(&:even?).to_a

# 18. take_while
#     Description: Returns elements from the beginning of the collection until the block returns false.
#     Example:
p [1, 2, 3, 5, 6, 8].take_while { |num| num < 4 }

# 19. drop_while
#     Description: Drops elements from the beginning of the collection until the block returns false, then returns the remaining elements.
#     Example:
p [1, 2, 3, 5, 6, 8].drop_while { |num| num < 4 }

# 20. slice
#     Description: Returns a subarray containing elements from the given start index (inclusive) to the given end index (exclusive).
#     Example:
p [1, 2, 3, 4, 5].slice(1, 3)

# 21. slice_each
#     Description: Iterates over the array in slices of the given size and yields each slice to the block.
#     Example:
#p [1, 2, 3, 4, 5].slice_each(2) { |slice| puts slice.inspect }
