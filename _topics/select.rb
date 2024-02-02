# Understanding when to use select versus each depends on the task you're trying to accomplish. Here are some patterns and scenarios where you might find select to be more appropriate than each:

#REAL_SOLUTION_LC_COUNT_DIGITS
# Given an integer num, return the number of digits in num that divide num.
# An integer val divides nums if nums % val == 0.

# Input: num = 121
# Output: 2
# Explanation: 121 is divisible by 1, but not 2. Since 1 occurs twice as a digit, we return 2.
def count_digits(num= 121)
  num.digits.reverse.select{|a| num % a == 0}.count
end

# Filtering elements: If you need to filter elements from a collection based on a condition, select is often a better choice. It returns a new array containing only the elements that satisfy the condition.

# Using select to filter even numbers
numbers = [1, 2, 3, 4, 5]
even_numbers = numbers.select { |num| num.even? }
p even_numbers # Output: [2, 4]
# Counting elements: If you need to count the number of elements that satisfy a condition, select followed by count is a concise way to achieve this.

# Counting even numbers
numbers = [1, 2, 3, 4, 5]
count_even_numbers = numbers.select { |num| num.even? }.count
p count_even_numbers # Output: 2
# Finding elements: If you need to find elements that match a certain criterion, select can be used to easily obtain those elements.

# Finding prime numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
prime_numbers = numbers.select do |num|
  next if num <= 1
  (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end
p prime_numbers
# Transforming elements: If you need to transform elements based on a condition, select followed by map or collect is a common pattern.


# Doubling even numbers
numbers = [1, 2, 3, 4, 5]
doubled_even_numbers = numbers.select { |num| num.even? }.map { |num| num * 2 }
p doubled_even_numbers
# Checking for existence: If you need to check whether any elements in a collection satisfy a condition, select followed by any? can be useful.


# Checking if there are any negative numbers
numbers = [1, 2, -3, 4, 5]
has_negative_numbers = numbers.select { |num| num < 0 }.any?
p has_negative_numbers
# Overall, select is particularly useful when you need to work with subsets of data that meet specific criteria, such as filtering, counting, or transforming elements in a collection. It's a powerful method for working with enumerable objects in a concise and expressive way.




numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Simple Example
evens = numbers.select { |number| number.even? }

p evens
# Output: [2, 4, 6, 8, 10]

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


def halves_are_alike_x(s = "book")
  def count_vowels(x)
    x.each.select {|char| "aeiouAEIOU".include?(char)}.size
  end
  resulta, resultb =[],[]
  s.each_char.with_index { |char,ind| resulta << char if ind < (s.length / 2)}
  s.each_char.with_index { |char,ind| resultb << char if ind >= (s.length / 2)}
  p resulta, resultb
  p count_vowels(resulta)
  p count_vowels(resultb)
  count_vowels(resulta) == count_vowels(resultb)
end