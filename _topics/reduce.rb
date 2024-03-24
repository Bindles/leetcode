#* ARRAY => REDUCE [FUNCTION, INITIAL VALUE] (inject)
[1,2,3,4].reduce do |total, number|
  total + number
end
# => 10
p [1,2,3,4].inject { |total, number| total + number }
# => 10
p [1,2,3,4].reduce(100) { |total, number| total + number }
# => 110
# The shorthand way of summing up these numbers can be done using the following:

p [1,2,3,4].reduce(&:+)
# => 10
p [1,2,3,4].reduce(100, &:+)
# => 110

def greet(name)
  "Hello, #{name}!"
end

def greetlength(name)
  {name => name.length}
end

names = ["Alice", "Bob", "Charlie"]

# Using the & symbol to convert the method greet into a block
greetings = names.map(&method(:greet))
greetingz = names.map(&method(:greetlength))

puts greetings.inspect
p greetingz

def word_pattern(pattern="heyman", s="jj")
  p s.split.map(&pattern.chars.zip(s.split).to_h.invert) == pattern.chars
end





# enumerable.reduce(initial_value) { |accumulator, element| block }
# enumerable: The enumerable collection (e.g., an array) to iterate over.
# initial_value: An optional argument that initializes the accumulator. If provided, the accumulator starts with this value. If not provided, the first element of the collection is used as the initial value.
# accumulator: A variable that stores the accumulated result.
# element: The current element being processed in the iteration.
# block: A block of code that specifies the operation to perform on each element and update the accumulator.
# Here are a few examples to illustrate how reduce works:

# Summing all elements of an array:

array = [1, 2, 3, 4, 5]
p array.reduce(0) { |total, num| total + num }
# Output: 15 (1 + 2 + 3 + 4 + 5)

# Finding the product of all elements of an array:

array = [1, 2, 3, 4, 5]
p array.reduce(1) { |total, num| total * num }
# Output: 120 (1 * 2 * 3 * 4 * 5)

# Concatenating all strings in an array:

array = ['Hello', ' ', 'world', '!']
p array.reduce('') { |string, word| string + word }
# Output: "Hello world!"

# Finding the maximum element in an array:

array = [10, 5, 8, 15, 3]
p array.reduce(array[0]) { |max, num| num > max ? num : max }
# Output: 15
# These examples demonstrate how reduce can be used to perform various operations on enumerable collections. It's a flexible method that can be applied to a wide range of scenarios where you need to accumulate a result by combining elements of a collection.

array = ['Hello', 'world', 'ruby']
result = array.reduce(:+)
puts result  # Output: "Helloworldruby"


# Array of numbers
numbers = [1, 2, 3, 4, 5]
p numbers.each_with_index.to_h

# Counting numbers greater than their index
count_greater_than_index = numbers.each_with_index.count(&:>) 

puts "Numbers greater than their index: #{count_greater_than_index}"

# Array of numbers
numbers = [5, 4, 3, 2, 1]

# Counting numbers less than their index
p numbers.each_with_index.to_h.to_a
count_less_than_index = numbers.each_with_index.count(&:<)

puts "Numbers less than their index: #{count_less_than_index}"




