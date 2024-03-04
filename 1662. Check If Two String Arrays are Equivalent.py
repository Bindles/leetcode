def arrayStringsAreEqual(word1 = ["ab", "c"], word2 = ["a", "bc"]):
  return("".join(word1) == "".join(word2))

print(arrayStringsAreEqual())


my_list = ["apple", "banana", "cherry"]
separator = ", "
result = separator.join(my_list)
print(result)  # Output will be: "apple, banana, cherry"

my_string = "Hello, world!"
words = my_string.split(", ")  # Here, 'split' comes after 'my_string'
print(words)
aaa = "".join(words)
print(aaa)
