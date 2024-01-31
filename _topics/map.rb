#Map( elemnent, index)

#SEE SELECT.RB

#********#
#new_array = enumerable.map { |element| transformation_logic }
#********#
#Example 1: Square each number in an array.
numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.map { |number| number ** 2 }

puts squared_numbers
# Output: [1, 4, 9, 16, 25]
# In this example, the block { |number| number ** 2 } is applied to each element in the array numbers, resulting in a new array where each number is squared.

# Example 2: Convert an array of strings to uppercase.
words = ["apple", "banana", "orange"]

uppercase_words = words.map { |word| word.upcase }

puts uppercase_words
# Output: ["APPLE", "BANANA", "ORANGE"]
# Here, the block { |word| word.upcase } transforms each string in the array words to uppercase.

# Example 3: Extract values from a hash.
person = { name: "Alice", age: 30, city: "Wonderland" }

values = person.map { |key, value| value }

puts values
# Output: ["Alice", 30, "Wonderland"]
# In this case, map is applied to a hash, and the block { |key, value| value } extracts the values, resulting in an array of values.

# Example 4: Modify elements in an array in-place.
numbers = [1, 2, 3, 4, 5]

numbers.map! { |number| number * 2 }

puts numbers
# Output: [2, 4, 6, 8, 10]
# Using map! modifies the original array in-place. The block { |number| number * 2 } doubles each number.

# Example 5: Using map with index.
words = ["apple", "banana", "orange"]

indexed_words = words.map.with_index { |word, index| "#{index + 1}. #{word}" }

puts indexed_words
# Output: ["1. apple", "2. banana", "3. orange"]
# The map.with_index variant allows you to access the index along with the element in the block.

class Car
  attr_accessor :model, :mileage
  def initialize(model, mileage)
    @model = model
    @mileage = mileage
  end
end

cars = [
  Car.new("Toyota", 35),
  Car.new("Honda", 28),
  Car.new("Ford", 32),
  Car.new("Chevrolet", 25),
  Car.new("Tesla", 50)
]

# Complex Example
fuel_efficient_cars = cars.select { |car| car.mileage > 30 }

puts fuel_efficient_cars.map(&:model)
# Output: ["Toyota", "Ford", "Tesla"]
puts cars[1].model
puts fuel_efficient_cars[0].mileage
p cars.map(&:model)


array=[1,2,3,4]
p array.map(&:even?)
p array.map {|i| i+1}
arrayz=["A","b"]
p arrayz.map { |string| string.upcase }
arrayx = ["11", "21", "5"]
p arrayx.map { |str| str.to_i }
# [11, 21, 5]
p array.each { |n| p n+n}
# [1, 2, 3]
p array.map { |n| n * 2 }
# [2, 4, 6]
p arraya = %w(a b c)
p arraya.map.with_index { |ch, idx| p [ch, idx] }
p arraya.each.with_index { |ch, idx| p  [ch, idx] }
p [1,"orange", "apple", "banana"].map(&:class)