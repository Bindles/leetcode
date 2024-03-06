#*LEARN
# Example: Square all even numbers from 1 to 10
squares_of_evens = [x**2 for x in range(1, 11) if x % 2 == 0]
print(squares_of_evens)


# numbers = [1, 2, 3, 4, 5]
# even_numbers = numbers.select { |x| x.even? }

# Python:
numbers = [1, 2, 3, 4, 5]
even_numbers = filter(lambda x: x % 2 == 0, numbers)


#*MAP=>double num*************
#*RUBY
# # Using block
# numbers = [1, 2, 3, 4, 5]
# doubled = numbers.map { |x| x * 2 }
# puts doubled.inspect  # Output: [2, 4, 6, 8, 10]

# # Using method
# def double(x)
#   x * 2
# end

# doubled = numbers.map(&method(:double))
# puts doubled.inspect  # Output: [2, 4, 6, 8, 10]

#*PYTHON
# Doubling Numbers:
# Using lambda
numbers = [1, 2, 3, 4, 5]
doubled = list(map(lambda x: x * 2, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]

# Without lambda
def double(x):
    return x * 2

doubled = list(map(double, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]
#********************************


#*MAP=>UPCASE*****
#*RUBY
# Using block
# words = ["hello", "world", "ruby"]
# uppercase = words.map(&:upcase)
# puts uppercase.inspect  # Output: ["HELLO", "WORLD", "RUBY"]

# # Using method
# def to_uppercase(word)
#   word.upcase
# end

# uppercase = words.map(&method(:to_uppercase))
# puts uppercase.inspect  # Output: ["HELLO", "WORLD", "RUBY"]

#*PYTHON
# Converting Strings to Uppercase:
# Using lambda
words = ["hello", "world", "python"]
uppercase = list(map(lambda x: x.upper(), words))
print(uppercase)  # Output: ['HELLO', 'WORLD', 'PYTHON']

# Without lambda
def to_uppercase(word):
    return word.upper()

uppercase = list(map(to_uppercase, words))
print(uppercase)  # Output: ['HELLO', 'WORLD', 'PYTHON']
#************************************************