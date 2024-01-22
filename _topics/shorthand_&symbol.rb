# Using map(&:length) to get the length of each string
p ["apple", "banana", "orange"].map(&:length)
# Result: [5, 6, 6]

# Using map(&:to_i) to convert each string to an integer
p ["1", "2", "3"].map(&:to_i)
# Result: [1, 2, 3]

# Using map(&:symbol) to apply the :upcase method to each element
puts ["Alice", "Bob", "Charlie"].map(&:upcase)
# Output: ["ALICE", "BOB", "CHARLIE"]
