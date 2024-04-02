s = "Hello how are you Contestant"
k = 4

print(s)
print(s.split())
print(s)
a=s.split()
print(a)
print(a[0])
print(" ".join(a[:3]))


# Creating a list of words
words = ["apple", "banana", "orange", "grape", "pear"]

# Slicing to get a sublist
print(words[1:4])  # Output: ["banana", "orange", "grape"]
print(words[:3])   # Omitting start index defaults to 0, so it includes elements from the beginning up to index 2
print(words[2:])   # Omitting end index defaults to the length of the list, so it includes elements from index 2 to the end
print(words[::-1]) # Reverses the list
print("Hello"[::-1])

# Adding and removing elements
words.append("melon")     # Adds "melon" to the end of the list
words.insert(2, "kiwi")   # Inserts "kiwi" at index 2
words.pop(0)               # Removes and returns the element at index 0 ("cherry")
words.remove("banana")    # Removes the first occurrence of "banana"
print(words)  # Output: ["kiwi", "orange", "grape", "pear", "melon"]

#*MORE

# List Comprehensions:
# Python supports list comprehensions, which allow for concise creation of lists based on existing lists or other iterable objects. List comprehensions are a powerful feature and can often replace map() and filter() functions.

# Example of list comprehension
squares = [x**2 for x in range(1, 6)]  # Output: [1, 4, 9, 16, 25]
# Slicing with Strides:
# In Python, slicing allows specifying a step size, known as stride. This enables more flexible slicing operations.

# Slicing with strides
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = numbers[::2]  # Output: [0, 2, 4, 6, 8]
# Immutable vs. Mutable:
# In Python, lists are mutable, meaning you can modify them in place. However, Python also has immutable sequences called tuples. Tuples are similar to lists but cannot be modified after creation.

# Tuple example
coordinates = (10, 20)
# Built-in Functions and Methods:
# Python lists come with built-in functions and methods for common operations like sorting (sorted()), finding the index of an element (index()), counting occurrences of an element (count()), and more.

# Using list methods
fruits = ["apple", "banana", "orange", "apple"]
print(fruits.count("apple"))  # Output: 2

# Unpacking:
# Python allows unpacking elements from a list into separate variables using a syntax similar to Ruby's splat operator (*).
# Unpacking
first, *rest = [1, 2, 3, 4, 5]
print(first)  # Output: 1
print(rest)   # Output: [2, 3, 4, 5]