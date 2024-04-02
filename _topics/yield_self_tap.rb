# Example data
array = [1, 2, 3, 4, 5]

# Using yield_self: passes the object to a block and returns the result of the block
result = array.yield_self { |arr| arr.map { |num| num * 2 } }
p result # Output: [2, 4, 6, 8, 10]

# Using tap: yields self to the block and then returns self
array.tap { |arr| arr << 6 }.tap { |arr| p arr } # Output: [1, 2, 3, 4, 5, 6]

# Another example of tap: Useful for method chaining without changing the object
hash = { name: 'John', age: 30 }
modified_hash = hash.tap { |h| h[:age] += 1 }.tap { |h| p h } # Output: { name: 'John', age: 31 }

# Using then (Ruby 2.6+): An alias for yield_self, mainly used for consistency
array.then { |arr| arr.map { |num| num * 2 } }.then { |result| p result } # Output: [2, 4, 6, 8, 10]

# Using itself: Returns the receiver itself
array.map { |num| num * 2 }.itself.then { |result| p result } # Output: [2, 4, 6, 8, 10]

# Using yield_self with chain method calls
result = array.yield_self { |arr| arr.map { |num| num * 2 } }.yield_self { |arr| arr.select(&:even?) }
p result # Output: [2, 4, 6, 8, 10]

# Using then with chain method calls
result = array.then { |arr| arr.map { |num| num * 2 } }.then { |arr| arr.select(&:even?) }
p result # Output: [2, 4, 6, 8, 10]

# Using then with conditional logic
result = array.then { |arr| arr.map { |num| num * 2 } }.then { |arr| arr.select(&:even?) }
              .then { |arr| arr.empty? ? 'No even numbers' : arr }
p result # Output: [2, 4, 6, 8, 10]

# Using then with other methods like reduce
sum = array.then { |arr| arr.reduce(0, :+) }
p sum # Output: 15 (Sum of elements in the array)
